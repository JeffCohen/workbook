# Deleting Rows

Be careful with this section.  There is no "Are you sure?"
and there is no undo!


## Deleting All Rows

``` ruby
Book.delete_all
```

## Deleting One Row By ID

If you know the ID of the row you want to delete:

``` ruby
Book.delete(5)
```

If you have already retrieved a row with `.find_by`, `.first`, or
`.last`, you can use the `.delete` method directly:

``` ruby
my_book = Book.find_by(title: 'Lost Moon')
my_book.delete
```
