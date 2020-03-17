import 'package:cloud_firestore/cloud_firestore.dart';

class BookService {
  final Firestore _firestore = Firestore.instance;
  final String dbColection = "books";

  Future<QuerySnapshot> getDataBooks() {
    var documents = _firestore.collection(dbColection).getDocuments();
    return documents;
  }

  Stream<QuerySnapshot> steamDataBooks() {
    var snapshots = _firestore.collection(dbColection).snapshots();
    return snapshots;
  }
}
