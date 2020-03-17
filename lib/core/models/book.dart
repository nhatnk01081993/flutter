import 'package:firebase_database/firebase_database.dart';

class Book {
  String id;
  String title;
  String category;
  String author;
  int chapters;

  //contructor
  Book(this.id, this.title, this.category, this.author, this.chapters);

  Book.fromSnapshot(DataSnapshot snapshot)
      : id = snapshot.key ?? '',
        title = snapshot.value["title"] ?? '',
        category = snapshot.value["category"] ?? '',
        chapters = snapshot.value["chapters"] ?? 0;
  toJson() {
    return {
      "title": title,
      "category": category,
      "author": author,
      "chapters": chapters
    };
  }
}
