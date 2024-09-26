import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_geohash/dart_geohash.dart';
import 'package:mlb_family_archive/models/family.dart';
import 'package:mlb_family_archive/models/family_location.dart';
import 'package:mlb_family_archive/models/family_member.dart';
import 'package:mlb_family_archive/models/post.dart';
import 'package:mlb_family_archive/services/storage_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_io/io.dart';
import 'package:image/image.dart' as img;

import '../models/member_image.dart';
import '../models/member_location.dart';
import '../models/user.dart';
import '../utils/functions.dart';

class FirestoreService {
  final FirebaseFirestore store;
  final StorageService storageService;
  static const mm = '🏏🏏🏏FirestoreService 🏏';

  FirestoreService(this.store, this.storageService);

  Future addUser(User user) async {
    return await addDocument(CollectionName.users, user.toJson());
  }

  Future getUser(String userId) async {
    List list = await getDocuments(
        collection: CollectionName.users, key: 'userId', keyValue: userId);
    if (list.isNotEmpty) {
      return list[0];
    }
    return null;
  }

  Future addFamily(Family family) async {
    return await addDocument(CollectionName.families, family.toJson());
  }

  Future addFamilyMember(FamilyMember member) async {
    return await addDocument(CollectionName.familyMembers, member.toJson());
  }

  Future addFamilyLocation(FamilyLocation familyLocation) async {
    var hash = _getGeoHash(
        latitude: familyLocation.latitude!,
        longitude: familyLocation.longitude!);
    familyLocation.geoHash = hash;
    return await addDocument(
        CollectionName.familyLocations, familyLocation.toJson());
  }

  String _getGeoHash({required double latitude, required double longitude}) {
    GeoHasher geoHasher = GeoHasher();
    var hash = geoHasher.encode(longitude, latitude, precision: 8);
    return hash;
  }

  Future addFamilyMemberLocation(MemberLocation memberLocation) async {
    var hash = _getGeoHash(
        latitude: memberLocation.latitude!,
        longitude: memberLocation.longitude!);
    memberLocation.geoHash = hash;
    return await addDocument(
        CollectionName.memberLocations, memberLocation.toJson());
  }

  Future addPost(Post post) async {

    for (var media in post.mediaList) {
      var file = File(media.filePath!);
      var url = await storageService.uploadFile(
        file: file,
        familyId: post.familyId!,
        memberId: post.memberId!,
      );
      media.url = url;
      var thumbFile = await createThumbnail(file);
      var thumbUrl = await storageService.uploadFile(
        file: thumbFile,
        familyId: post.familyId!,
        memberId: post.memberId!,

      );
      media.thumbUrl = thumbUrl;
    }
    return await addDocument(CollectionName.posts, post.toJson());
  }

  Future addMemberImage(
      {required MemberImage image}) async {
    var mFile = File(image.filePath!);
    var url = await storageService.uploadFile(
      file: mFile,
      familyId: image.familyId!,
      memberId: image.memberId!,
    );
    image.url = url;
    var thumbFile = await createThumbnail(mFile);
    var thumbUrl = await storageService.uploadFile(
      file: thumbFile,
      familyId: image.familyId!,
      memberId: image.memberId!,

    );
    image.thumbUrl = thumbUrl;

    return await addDocument(CollectionName.memberImages, image.toJson());
  }

  Future<File> createThumbnail(File imageFile) async {
    //TODO - remember to get video thumbnail ....
    final image = img.decodeImage(imageFile.readAsBytesSync());
    if (image == null) {
      throw Exception('Failed to decode image');
    }
    var extension = StorageService.getFileExtension(imageFile);
    // Resize the image to 200x200
    final thumbnail = img.copyResize(image, width: 200, height: 200);
    final directory = await getTemporaryDirectory();
    final fileName =
        'thumbnail_${DateTime.now().millisecondsSinceEpoch}.$extension';
    final thumbnailFile = File('${directory.path}/$fileName');
    // Save the thumbnail as a JPEG
    await thumbnailFile.writeAsBytes(img.encodeJpg(thumbnail));

    return thumbnailFile;
  }

  Future<String> addDocument(String collection, dynamic data) async {
    var docRef = await store.collection(collection).add(data);
    pp('$mm ... document added to Firestore:  🍎 ${docRef.path} 🍎 collection: $collection');
    return docRef.path;
  }

  Future<List> getDocuments(
      {required String collection,
      required String key,
      required String keyValue}) async {
    var snapShot = await store
        .collection(collection)
        .where(key, isEqualTo: keyValue)
        .get();
    List list = [];
    for (var value in snapShot.docs) {
      list.add(value.data());
    }
    pp('$mm getDocuments: documents found: 🍎${list.length} 🍎');
    return list;
  }

  Future<List> getAllDocuments({required String collection}) async {
    var snapShot = await store.collection(collection).get();
    List list = [];
    for (var value in snapShot.docs) {
      list.add(value.data());
    }
    pp('$mm getAllDocuments: documents found:  🍎 ${list.length}  🍎');
    return list;
  }
}

class CollectionName {
  static const users = 'users';
  static const posts = 'posts';
  static const postResponses = 'postResponses';
  static const families = 'families';
  static const memberLocations = 'memberLocations';
  static const familyMembers = 'familyMembers';
  static const familyLocations = 'familyLocations';
  static const memberImages = 'memberImages';
}
