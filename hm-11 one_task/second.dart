class Book {
  final String author;
  final int year;
  final String title;

  Book({required this.author, required this.year, required this.title});

  static String getInfo(Book book) {
    return "Author :${book.author} , Year:${book.year} , Title:${book.title}";
  }
}

class PersonWithBook {
  final String name;
  final Book book;

  PersonWithBook({required this.name, required this.book});

  String getInfo() {
    return "Name:$name . книга которую читает ${book.title}, ${book.year} года";
  }
}

void main(List<String> args) {
  final book = Book(author: "author", year: 2009, title: "Harry Potter");

  final personWithBook = PersonWithBook(name: "shakha", book: book);
  final personWithBookInfo = personWithBook.getInfo();
  print(personWithBookInfo);
}