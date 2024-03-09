class Book {
  String _name;
  String _author;
  int _ISBN;
  bool _available;

  Book(this._name, this._author, this._ISBN, this._available);

  String get name => this._name;
  String get author => this._author;
  int get ISBN => this._ISBN;
  bool get available => this._available;

  set name(String name) => _name = name;
  set author(String author) => _author = author;
  set ISBN(int ISBN) => _ISBN = ISBN;
  set available(bool available) => _available = available;

  void display() {
    print("Book name: ${this.name} ");
    print("Author: ${this.author}");
    print("ISBN: ${this.ISBN}");
    if (this.available)
      print("Available");
    else
      print("Not available"); 
  }
}
