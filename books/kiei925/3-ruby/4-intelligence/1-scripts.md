# Ruby Scripts

IRB is a great tool for playing with Ruby expressions, but we will
now write complete, multiline _programs_ in Ruby.  To do that,
we will write our code in a text file.  By saving the file on
our computer, we can have Ruby run every line in the file from
top to bottom.  This is what we mean when we refer to a
"Ruby program" or "Ruby script" - just a text file containing
many lines of Ruby expressions.

If you aren't already comfortable with the Cloud9 IDE,
[do that first](/1-setup/2-cloud9-orientation/1-the-ide) before
continuing.

## Our First Ruby Script

> This example uses string interpolation and
multi-line text from the chapter on [Working With Text](3-ruby/2-objects/7-working-with-text).


Create a new file and type these two lines of code (do not
copy and paste):


``` ruby
lucky_number = rand(20)
print "Today's lucky number is: #{lucky_number}. \n"
```

Save it with the filename `lucky.rb`.  


If you already have `irb` running in your command prompt, you should
exit it now to get back to your command line:

``` irb
irb(main)> exit
```

(or you can press `CTRL-D` to exit.)

> We use the `.rb` file extension to remind ourselves that
the file contains Ruby code.

Now, let's run our Ruby script from your command line, like this:

```
~/code$ ruby lucky.rb
```

and you should see something like:

```
Today's lucky number is: 25
```

_If you see something completely different, Ruby probably couldn't
understand your code and displayed an error message instead.  Don't panic - this happens to all of us with great frequency.  Just read the error message slowly to get clues on what went wrong. Fix your code, save your file, and try to run it again._

Run your script many times to see different numbers appear.
