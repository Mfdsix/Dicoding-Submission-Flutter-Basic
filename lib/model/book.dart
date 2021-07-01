class MBook {
  String title;
  String isbn;
  int pageCount;
  String publishedDate;
  String thumbnailUrl;
  String shortDescription;
  String longDescription;
  String status;
  List<String> authors;
  List<String> categories;

  MBook(
      {this.title = "",
      this.isbn = "",
      this.pageCount = 0,
      this.publishedDate = "",
      this.thumbnailUrl = "",
      this.shortDescription = "",
      this.longDescription = "",
      this.status = "",
      this.authors = const [],
      this.categories = const []});
}
