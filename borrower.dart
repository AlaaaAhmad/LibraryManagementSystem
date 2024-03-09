import 'book.dart';

class Borrower {
  int _id;
  String _name;
  String _contactInfo;
  List<Book> _borrowedBooks = [];

  Borrower(this._id, this._name, this._contactInfo, this._borrowedBooks);

  int get id => this._id;
  String get name => this._name;
  String get contactInfo => this._contactInfo;
  List<Book> get borrowedBooks => this._borrowedBooks;

  set id(int id) => _id = id;
  set name(String name) => _name = name;
  set contactInfo(String contactInfo) => _contactInfo = contactInfo;
  set borrowedBooks(List<Book> borrowedBooks) => _borrowedBooks = borrowedBooks;

  void display() {
    print("Borrower id: ${this.id}");
    print("Borrower Name: ${this.name}");
    print("Borrower contact Info: ${this.contactInfo}");
    print("Borrowed Books:");
    for (int i = 0; i < this._borrowedBooks.length; i++) 
    {
      print(borrowedBooks[i].name); 
    }
  }
}
