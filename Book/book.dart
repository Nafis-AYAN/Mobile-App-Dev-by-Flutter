class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;


  Book(this.title, this.author, this.publicationYear, [this.pagesRead = 0]) {
    totalBooks++; // Increment totalBooks each time a new Book is created
  }

  void read(int pages) {
    pagesRead += pages;
  }


  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getPagesRead() {
    return pagesRead;
  }

  int getBookAge() {
    DateTime currentDate = DateTime.now();
    return currentDate.year - publicationYear;
  }
}

void main() {

  Book book1 = Book('1984', 'George Orwell', 1949);
  Book book2 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);
  Book book3 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);


  book1.read(50);
  book2.read(30);
  book3.read(120);


  print('Title: ${book1.getTitle()}');
  print('Author: ${book1.getAuthor()}');
  print('Publication Year: ${book1.getPublicationYear()}');
  print('Pages Read: ${book1.getPagesRead()}');
  print('Age of the book: ${book1.getBookAge()} years\n');


  print('Title: ${book2.getTitle()}');
  print('Author: ${book2.getAuthor()}');
  print('Publication Year: ${book2.getPublicationYear()}');
  print('Pages Read: ${book2.getPagesRead()}');
  print('Age of the book: ${book2.getBookAge()} years\n');


  print('Title: ${book3.getTitle()}');
  print('Author: ${book3.getAuthor()}');
  print('Publication Year: ${book3.getPublicationYear()}');
  print('Pages Read: ${book3.getPagesRead()}');
  print('Age of the book: ${book3.getBookAge()} years\n');


  print('Total Books Created: ${Book.totalBooks}');
}
