import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mlb_family_archive/services/auth.dart';
import 'package:mlb_family_archive/services/firestore_service.dart';
import 'package:mlb_family_archive/services/prefs.dart';
import 'package:mlb_family_archive/services/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/functions.dart';

class RegisterServices {
  static const mm = '💖💖💖RegisterServices 💖';

  static Future register() async {
    var prefsInstance = await SharedPreferences.getInstance();

    StorageService storageService = StorageService(FirebaseStorage.instance);
    GetIt.instance.registerLazySingleton<FirestoreService>(
        () => FirestoreService(FirebaseFirestore.instance,
            storageService));
    GetIt.instance.registerLazySingleton<Prefs>(() => Prefs(prefsInstance));
    GetIt.instance
        .registerLazySingleton<AppAuth>(() => AppAuth(FirebaseAuth.instance));
    GetIt.instance.registerLazySingleton<StorageService>(
        () => storageService);

    pp('$mm 4 services registered');
  }
}
