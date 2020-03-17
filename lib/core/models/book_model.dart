import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  String id;
  String title;
  String category;
  String author;
  int chapters;
  int like;
  final DocumentReference reference;

  Book.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['id'] != null),
        assert(map['category'] != null),
        assert(map['author'] != null),
        assert(map['title'] != null),
        title = map['title'],
        category = map['category'],
        author = map['author'],
        chapters = map['chapters'],
        like = map['like'];
  Book.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
