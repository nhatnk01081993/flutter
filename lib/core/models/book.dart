class Book {
  String id;
  String title;
  String category;
  String author;
  int chapters;
  DateTime startdate;
  DateTime dateupdate;
  String describe;
  String status;
  int like;
  int rating;

  //contructor
  Book(
      {this.id,
      this.title,
      this.category,
      this.author,
      this.chapters,
      this.startdate,
      this.dateupdate,
      this.describe,
      this.status,
      this.like,
      this.rating});
}
