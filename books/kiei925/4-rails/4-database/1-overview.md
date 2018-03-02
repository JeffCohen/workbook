# Overview

A _database_ is like a spreadsheet workbook:

* A database contains a series of _tables_.  
* Each table contains a series of _columns_.
* Columns have a _name_ and a _data type_.  Data types are typically _text_,
_integer_, _date_, and _boolean_.

The developer dictates the _schema_, which is the names of all of the
tables and all of the column definitions.  The developer might also
_seed_ one or more tables with an initial set of rows.

Users cannot modify the schema.  Instead, they can add, update, and
delete rows from one or more tables.

It might sound too simple, but that's actually all that users do on the web:
they add, update, and edit rows in a database.  

A web application is basically nothing more than a nice-looking 
record-keeping system.
