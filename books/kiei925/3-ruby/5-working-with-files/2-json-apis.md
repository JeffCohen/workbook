# Working with JSON APIs

Often we wish to retrieve data stored somewhere on the internet,
rather than a local file that's under our control.  If the data
is exposed over the web as a "JSON API", that means that we can
usually retrieve live data in "JSON" format.

Data in JSON format is, in Ruby, a giant `String` blob.

## From a URL Into A String

If you have the URL of the JSON data you want, you can
get it quite easily in Ruby:


``` ruby
require 'open-uri'
json_text = open("http://bikes.kiei925.com/stations.json").read
```

This code does four things:

1. Activates Ruby's module for opening live URLs (web pages, basically)
   as if they were local files
2. "Opens" the URL with the `open()` function, which returns
   an object of the class `File`
3. Invokes the `.read` method on the resulting `File` object, which
   returns a `String`
4. Stores the returned string in a variable named `json`

At this point, the `json_text` variable holds a (very large) string.
If you are very adept at using Ruby's string methods, you might
be able to extract some meaningful information out of it.

But there's an easier way.

## From a JSON-Formatted String To an Array or Hash

Trying to work with a JSON string directly is a nightmare.
JSON uses `[ ]` and `{ }` notation to indicate arrays and hashes.
We can leverage that knowledge to convert the string into a structure
that's easier to use.

Let's enhance our code:

``` ruby
require 'open-uri'
require 'json'
json_text = open("http://bikes.kiei925.com/stations.json").read
data = JSON.parse(json_text)
```

The `data` variable will now either be of type `Hash` or `Array`
depending on the actual contents of the `json_text` variable, which
are much easier to inspect and to work with than a giant string.
