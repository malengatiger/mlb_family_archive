import 'package:cloud_firestore/cloud_firestore.dart';

import '../utils/functions.dart';

class FirestoreService {
  final FirebaseFirestore store;
  static const mm = '🏏🏏🏏FirestoreService 🏏';

  FirestoreService(this.store);

  Future<String> addDocument(String collection, dynamic data) async {
    var docRef = await store.collection(collection).add(data);
    pp('$mm document added to Firestore:  🍎 ${docRef.path}');
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
  Future<List> getAllDocuments(
      {required String collection}) async {
    var snapShot = await store
        .collection(collection)
        .get();
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
}




