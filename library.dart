import "borrower.dart";
import "book.dart";

class Library {
  List<Borrower> borrowers = [];
  List<Book> books = [];
  List<Book> borrowed = [];

  void addBook(Book book) {
    books.add(book);
  }

  void deleteBook(int id) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].ISBN == id) {
        books.remove(books[i]);
      }
    }
  }

  void displayBooks() {
    for (int i = 0; i < books.length; i++) {
      books[i].display();
    }
  }

  void addBorrower(Borrower borrower) {
    borrowers.add(borrower);
  }

  void deleteBorrower(int borrowerID) {
    for (int i = 0; i < books.length; i++) {
      if (borrowers[i].id == borrowerID) {
        borrowers.remove(borrowers[i]);
      }
    }
  }

  void displayBorrowers() {
    for (int i = 0; i < borrowers.length; i++) {
      borrowers[i].display();
    }
  }

  void BorrowBook(int isbn, int borrowerId) {
    bool isBorrowed = false;
    late Book borrowedBook;
    late Borrower person;
    for (var b in books) {
      if (b.ISBN == isbn && b.available) {
        isBorrowed = true;
        borrowedBook = b;
        break;
      }
    }
    for (var bo in borrowers) {
      if (bo.id == borrowerId) {
        person = bo;
        break;
      }
    }
    if (isBorrowed) {
      borrowedBook.available = false;
      books.remove(borrowedBook);
      for (var p in books) print(p.name);
      person.borrowedBooks.add(borrowedBook);
      borrowed.add(borrowedBook);

      print(
          "Person with id: ${person.id} has borrowed the book with id: ${borrowedBook.ISBN}");
    }
  }

   void returnBook(int isbn, int borrowerId) {
    late Book b;
    late Borrower bo;
    for (int i = 0; i < borrowers.length; i++) {
      if (borrowers[i].id == borrowerId) {
        for (int j = 0; j < borrowers[i].borrowedBooks.length; j++) {
          if (borrowers[i].borrowedBooks[j].ISBN == isbn) {
            b = borrowers[i].borrowedBooks[j];
            bo = borrowers[i];

            break;
          }
        }
      }
    }
    b.available = true;
    books.add(b);
    borrowed.remove(b);
    bo.borrowedBooks.remove(b);
    print("hello");
  }
}
