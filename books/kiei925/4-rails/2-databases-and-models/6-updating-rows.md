# Updating a Row

Another thing you can do once you have retrieved a specific row is update it's attribute values.

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.update title: "The Adventures of Sherlock Holmes"
```
