# Database Seeding

Using the Rails console to create rows by hand can be tedious.  
Sometimes it's helpful to have a Ruby script that can automate
the process of "seeding" the database with an initial set of data.

Rails supports this via the `db/seeds.rb` file.  This file can
contain any Ruby code that you like.  You can then run this file
anytime by using the `rails db:seed` command.

Here's an example seeds file:

``` ruby
# db/seeds.rb

Book.delete_all

Book.create title: 'Hamlet', author: 'Shakespeare'
Book.create title: 'Sherlock Holmes', author: 'Sir Arthur Conan Doyle'
Book.create title: 'A Tale of Two Cities', author: 'Charles Dickens'

print("There are now #{Book.count} books in the database.")
```

and here's how we run it:

``` sh
$ rails db:seed
```
