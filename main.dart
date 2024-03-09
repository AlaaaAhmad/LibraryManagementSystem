import "library.dart";
import "book.dart";
import "dart:io";
import "borrower.dart";

void main() {
  Library library = new Library();
  bool finished = false;
  while (!finished) {
    print("Choose the number of operation");
    print("1- Add a book to the library");
    print("2- Remove a book from the library");
    print("3- Display the books in the library");
    print("4- Add a borrower to the library");
    print("5- Remove a borrower from the library");
    print("6- Display the borrowers in the library");
    print("7- Borrow a book");
    print("8- Return a book");
    print("9- Exit");

    String op = stdin.readLineSync().toString();

    switch (op) {
      case "1":
        {
          print("Enter the book's name");
          String Bname = stdin.readLineSync().toString();
          print("Enter the book's author");
          String Bauthor = stdin.readLineSync().toString();
          print("Enter the book's ISBN number");
          String Bisbn = stdin.readLineSync().toString();
          int Bookisbn = int.parse(Bisbn);
          Book b = new Book(Bname, Bauthor, Bookisbn, true);
          library.addBook(b);
          break;
        }
      case "2":
        {
          print("Enter the book's ISBN number");
          String i = stdin.readLineSync().toString();
          int idd = int.parse(i);
          library.deleteBook(idd);
          break;
        }
      case "3":
        {
          library.displayBooks();
          break;
        }
      case "4":
        {
          print("Enter the borrower's id");
          String x = stdin.readLineSync().toString();
          int y = int.parse(x);
          print("Enter the borrower's name");
          String borrowerName = stdin.readLineSync().toString();
          print("Enter the borrower's contact info");
          String info = stdin.readLineSync().toString();
          Borrower bo = new Borrower(y, borrowerName, info, []);
          library.addBorrower(bo);

          break;
        }
      case "5":
        {
          print("Enter the borrower's id number");
          String i = stdin.readLineSync().toString();
          int idd = int.parse(i);
          library.deleteBorrower(idd);

          break;
        }
      case "6":
        {
          library.displayBorrowers();
          break;
        }
      case "7":
        {
          print("Please, enter the borrower's id");
          String i = stdin.readLineSync().toString();
          int idd = int.parse(i);
          print("Please, enter the book id");
          String x = stdin.readLineSync().toString();
          int y = int.parse(x);
          library.BorrowBook(idd, y);

          break;
        }
      case "8":
        {
          try {
            print("Please, enter the borrower's id");
            String i = stdin.readLineSync().toString();
            int idd = int.parse(i);
            print("Please, enter the book id");
            String x = stdin.readLineSync().toString();
            int y = int.parse(x);
            library.returnBook(idd, y);

          
          } catch (e) {
            print(e.toString());
          }
        }
      case "9":
        {
          finished = true;
        }
      default:
        {
          print("Please, enter a valid number");
          break;
        }
    }
  }

}
