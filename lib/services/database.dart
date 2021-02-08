import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference usersCollection = Firestore.instance.collection("users");

  Future updateUserData(String username, List<int> favoriteRecipes) async {
    return await usersCollection.document(uid).setData({
      'username': username,
      'favoriteRecipes': favoriteRecipes,
    });
  }
}