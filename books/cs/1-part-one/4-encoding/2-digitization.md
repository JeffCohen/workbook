# Digitizing Information

The first level of encoding is _digitization_ in which we try to represent information, including analog information, numerically.  

## Binary

Binary encoding uses 1s and 0s to represent information.  For example, coming up with a single number to represent a black-and-white family might seem silly if not imposssible. But we first divide the photo into a large matrix of very tiny dots, so that each dot was either black or white. Now it becomes trivial to represent each dot in the photo: we just need one number to represent "white" and another to represent "black".  

Similarly, electronic computers work by conveying electrons though circuits, and representing states such as "on" and "off" are therefore natural.

Alan Turing first recognized that the binary number system would therefore be an efficient encoding of digital information.  The photo can be represented as a very long string of 1s and 0s.  Similaly, logic gates, alphabetic characters, and symbolic instructions, mathematical equations - almost anything you can think of - can be reduced down into tiny pieces representable with just 1s and 0s.

Understanding the binary number system is essential for the modern computer scientist.  Here are a few examples of how to represent everyday quantities in binary:

   				Decimal          Binary
Zero apples   		0		        0
One apple           1               1
Two apples          2              10
Four apples         4             100
Five apples         5             101
Ten apples         10            1010
255 apples        255            111111111
1000 apples      1000            1111101000

Each 1 and 0 is called a "binary digit", or "bit" for short.

Computers can't actually comprehend binary numbers at a glance.  Early computers could only "see" 4 bits at a time.  Four bits can only represent the integers from 0 to 31. Larger numbers were broken down into groups of four, and the computer would have to keep trakc of which group it was processing at the time.  When written for humans, often a bit of space was insert between each group of four:

0011 1110 1000

Computers that learned to see 8 bits at a time dominated the PC revolution of the 1970's and 1980's.  Each 8-bit group was called a _byte_ (as a play on the word "bit"), while a 4-bit group was only a _nybble_.  

Ah yes: geek humor at its finest.


## Hexadecimal

Binary is great for computers to read, but difficult for humans.  It's easy to get lost in a long trail of 1s and 0s when you're trying to understand the value of an 8-bit or 16-bit number.

Hexadecimal is a very common format for representing large values in a much more compact manner.

[image of base 16 counting]

[Bill Amend bar napkin hexadecimal]

   				Decimal          Hexadecimal
Zero apples   		0		          0
One apple           1                 1
Two apples          2                 2
Four apples         4                 4
Five apples         5                 8
Ten apples         10                 A
255 apples        255                 FF
1000 apples      1000                 3E8


## Color Encoding

Color values tend to get their own encoding schemes.  Computers can generate millions of different colors on the screen by combining various levels of just three colors of light: red, green, and blue.  

We can then represent any color in numerical form as the combination of these levels.  Here's a color hexadecimal representation for the color purple:

  \#FF00FF

The first two hexadecimal digits represent the red color level; the middle two, the green level; and the final two digits are the blue level.  Because each color must represent its level using only two hexadecimal digits, it can have a value from zero to 255.  

The color code #FF00FF means "255 of red; 0 green; and 255 blue".  In other words, lots and red with an equal amount of blue, which results in purple.
