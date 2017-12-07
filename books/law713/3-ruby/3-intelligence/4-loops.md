# Loops

We finally come to one of the most important ideas in programming: loops.

## First, the bad news

To begin, consider the following:

``` ruby
favorites = ["purple", "baseball", 21]

position = 0
puts favorites[position]

position += 1
puts favorites[position]

position += 1
puts favorites[position]
```

If we run this script we'd get the following output:

```
purple
baseball
21
```

Imagine now that we decide to add another element to the list:

```
favorites = ["purple", "baseball", 21, "Chicago"]
```

How would we update the rest of the code so that we'd still
display each item from the list?

You got it: we'd add a little more code to increment the
`position` variable, and then still use `favorites[position]`
to display the last item.

But this is feeling tedious.

## Good News
