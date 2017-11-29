# Ruby Scripts

IRB is a great tool for playing with Ruby expressions, but we will
now write complete, multiline _programs_ in Ruby.  To do that,
we will write our code in a text file.  By saving the file on
our computer, we can have Ruby run every line in the file from
top to bottom.  This is what we mean when we refer to a
"Ruby program" or "Ruby script" - just a text file containing
many lines of Ruby expressions.

## Our First Ruby Script

Open your text editor (if you aren't already familiar with Atom,
[do that chapter first](/1-setup/2-orientation/1-text-editor) and
type the following code:

``` ruby
lucky_number = rand(20)
print "Today's lucky number is " + 
