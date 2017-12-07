# `if`

We now arrive at one of the most powerful parts of Ruby: the `if` statement.

The `if` statement gives your program the ability to make a decision
on its own.

Here's a program that picks a random number between 1 and 5, and displays
a special message if the number is 3:

``` ruby
number = rand(1..5)   

print "Today's number is: #{number} \n"   

if n == 3         
  print "Congratulations!! \n"
end

print "Finished. \n"
```

Run this program several times until you see the "Congratulations" message.

Can you explain how the `if` statement works?

Here are some hints:

* When Ruby sees the `if` statement, it evaulates the expression that follows it: `n == 5`
* If the expression evaluates to `true`, Ruby continues runs
  the code inside the `if`...`end` section
* If the expression evaluates to `false`, then Ruby skips the `if`...`end` section.
* Either way, Ruby continues with the rest of the program.
