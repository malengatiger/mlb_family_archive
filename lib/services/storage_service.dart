import 'package:firebase_storage/firebase_storage.dart';
import 'package:mime/mime.dart';
import 'package:universal_io/io.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import '../utils/functions.dart';

class StorageService {
  final FirebaseStorage storage;
  StorageService(this.storage);
  static const dir = 'FamilyArchive';
  static const mm = '🥃🥃🥃 StorageService 🥃';
  Future<String> uploadFile(
      {required File file,
      String familyId = 'ADMIN', String memberId ='MEMBER'}) async {
    // Create a storage reference from our app
    String url = '';
    final storageRef = FirebaseStorage.instance.ref();
    var path = storageRef.fullPath;
    pp('$mm fullPath: $path');
    var type = getFileMimeType(file);
    var extension = getFileExtension(file);
    final fileRef = storageRef.child("$dir/$familyId/$memberId/"
        "file_${DateTime.now().millisecond}.$extension");
    try {
      var snapshot = await fileRef.putFile(file);
      _printSnapshot(snapshot);
      url = await snapshot.ref.getDownloadURL();
      pp('$mm file download url: $url');
    } on FirebaseException catch (e) {
      pp('$mm error: $e');
      throw Exception('File upload failed');
    }
    return url;
  }

  Future<File> downloadFileFromFirebaseStorage(String downloadUrl) async {
    // Create a storage reference from the download URL
    final ref = FirebaseStorage.instance.refFromURL(downloadUrl);
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/${ref.name}');
    // Download the file to the created file
    await ref.writeToFile(file);

    return file;
  }
  Future<File?> downloadFile(String url) async {
    File? file;
    try {
      final response = await http.get(Uri.parse(url));
      final directory = await getTemporaryDirectory();
      file = File('${directory.path}/temp_file.${getFileExtensionFromUrl(url)}');
      // Write the downloaded bytes to the file
      await file.writeAsBytes(response.bodyBytes);
    } catch (e) {
      pp(e);
    }

    return file;
  }
  String getFileExtensionFromUrl(String url) {
    if (!url.contains('.')) {
      return ''; // No extension found
    }
    return url.split('.').last.split('?').first;
  }
  _printSnapshot(TaskSnapshot snapshot) {
    pp('$mm ${snapshot.bytesTransferred} bytesTransferred 🍐${snapshot.totalBytes} total bytes');
    pp('$mm state name: 🍐${snapshot.state.name}');
    pp('$mm metadata: 🍐${snapshot.metadata.toString()} 🍐');
  }

  static String getFileExtension(File file) {
    if (!file.path.contains('.')) {
      return ''; // No extension found
    }
    return file.path.split('.').last;
  }

  String getFileMimeType(File file) {
    final mimeType = lookupMimeType(file.path);
    return mimeType ?? 'application/octet-stream';
  }
}
