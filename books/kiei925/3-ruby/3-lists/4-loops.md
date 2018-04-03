# Loops

We finally come to one of the most important ideas in programming: loops.

## First, the Bad News

To begin, consider the following:

``` ruby
favorites = ["purple", "baseball", "programming"]

position = 0
fave = favorites[position]
print "#{fave}\n"

position += 1
fave = favorites[position]
print "#{fave}\n"

position += 1
fave = favorites[position]
print "#{fave}\n"
```

If we run this script we'd get the following output:

```
purple
baseball
programming
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

But this is feeling tedious.  If we had a list of 1000 items, our code
would get very long indeed!

## And Now, the Good News

Ruby provides an easier way to "loop through" an array.  Instead of
keeping track of our position in the array, and retrieving each
element by position, we can have Ruby do this work for us and simply
hand us each element in the array, one at a time, for
us to work with.  

```
favorites = ["purple", "baseball", 21, "Chicago"]

# Let's print each element to the screen, one at a time

for fave in favorites
  print "#{fave}\n"
end

```

This _for loop_ hides all of the gory details for us.  We don't have to
use a _position_ variable anymore or keep track of anything.  Instead,
Ruby will do all of that on our behalf, and automatically fill in the
`fave` variable with the actual value of each element, one at a time.
