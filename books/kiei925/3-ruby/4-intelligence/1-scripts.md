# Ruby Scripts

IRB is a great tool for playing with Ruby expressions, but we will
now write complete, multiline _programs_ in Ruby.  To do that,
we will write our code in a text file.  By saving the file on
our computer, we can have Ruby run every line in the file from
top to bottom.  This is what we mean when we refer to a
"Ruby program" or "Ruby script" - just a text file containing
many lines of Ruby expressions.

## Our First Ruby Script

> This example uses string interpolation and
multi-line text from the chapter on [Operators](/3-ruby/4-operators).

If you aren't already familiar with Atom,
[do that chapter first](/1-setup/2-orientation/1-text-editor).

Create a new file in Atom and
type the following code:


``` ruby
lucky_number = rand(20)
print "Today's lucky number is: #{lucky_number}. \n"
```

Save it with the filename `lucky.rb` in a folder that's easy for your command
prompt to get to, like `~/code/` (macOS) or `C:/code` (Windows).  

> We use the `.rb` file extension to remind ourselves that the file contains Ruby code.

If you already have `irb` running in your command prompt, you should
exit it now to get back to your command line:

``` irb
irb(main)> exit
```

(or you can press `CTRL-D` to exit.)

Now, run your Ruby script directly from your command line, like this:

```
ruby lucky.rb
```

and you should see something like:

```
Today's lucky number is: 25
```

Run it again to see different numbers appear.

If you see something completely different, Ruby probably couldn't
understand your code and displayed an error message instead.  Don't panic - this happens to all of us with great frequency.  Just read the error message slowly to get clues on what went wrong. Fix your code, save your file, and try to run it again.
