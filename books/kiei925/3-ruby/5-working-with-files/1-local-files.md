# Working with Local Files

Most computer programs spend their time working with data
that already lives in a spreadsheet, online database, or
even in plain text files.

Knowing how to read data from a text file can be very handy,
because most other kinds of files (like spreadsheets and
databases) can be easily converted into text files.

We need to read files into memory (i.e. variables) so that
we can use Ruby to inspect, manipulate, and output the data.

We typically employ one of three strategies when reading data from
an existing file.  We can load the entire contents of the file
into a single `String` object.  We can consider the file to be
a list of individual lines, and load the file into an array
of strings.  Or, we can process the file one line at a time,
and use a `Hash` to represent the data.

Which strategy you choose depends on what you're going to want
to do with the data once you read it in.  

<div class="alert alert-primary">
  For example purposes we assume that you have a file
  named "data.txt" or "data.csv".
</div>

## From a File Into A String

This is a good strategy when you want to treat the entire file as a single
blob of text.

```
data = open("data.txt").read
```

This one line of code actually does three things:

1. "Opens" the file with the `open()` function, which returns
   an object of the class `File`
2. Invokes the `.read` method on the resulting `File` object, which
   returns a `String`
3. Stores the returned string in a variable named `data`

From here, you can use a wealth of `String` methods to manipulate
the data further.

## From a File Into An Array

This is a good strategy when you want to treat the entire file as a single
blob of text.

```
data = open("data.txt").readlines
```

This one line of code actually does three things:

1. Opens the file with the `open()` function, which returns
   an object of the class `File`
2. Invokes the `.readlines` method on the resulting `File` object, which
   converts each line inside the file into a string object, and
   then returns an array of all of the strings
3. Stores the returned array in a variable named `data`

From here, you can use a wealth of `Array` methods to manipulate
the data further.

## From a CSV File Into An Array

This is a good strategy when you have a CSV file, perhaps from an export
of a spreadsheet.  The end result will be an array of arrays:
an array of lines, where each line is itself an array of columns
(called _fields_).  Here's an example CSV file:

``` csv
ID,Name,Favorite Fruit
100,Alice,Apples
101,Bob,Bananas
101,Jeff,Cookies
```

We can read this into memory like this:

``` ruby
require 'csv'
data = CSV.open('data.csv').readlines
```

This code does four things:

1. Activates Ruby's CSV processing module by using the `require` command
2. Opens the file with the `CSV.open()` function, which returns
   an object of the class `CSV`
3. Invokes the `.readlines` method on the resulting `CSV` object, which
   converts each line in the file into a array of fields,
   and returns an array of all of the arrays.
4. Stores the returned array in a variable named `data`

Here's what the `data` variable would like like:

``` ruby
[["ID", "Name", "Favorite Fruit"], ["100", "Alice", "Apples"], ["101", "Bob", "Bananas"], ["101", "Jeff", "Cookies"]]
```

Notice that the first array entry contains the header lines.  You might
want to delete that first entry by calling `data.shift`.

From here, you can use a wealth of `Array` methods to manipulate
the data further.
