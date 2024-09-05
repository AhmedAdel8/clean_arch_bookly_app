class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authorName; //entity >> Ui بتعبر عن الداتا اللي في ال
  final num? price;
  final num? rating;

  BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.rating,
    required this.bookId,
  });
}
