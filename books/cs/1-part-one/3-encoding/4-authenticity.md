# Authenticity

One of most unexpected fruits from cryptography's labor is a means of demonstrating authenticity and trust.  Today's computer security systems depend on a web of trust.  The ability for your browser to verify that "www.amazon.com" is actually, truly, the official Amazon web storefront is a testament to the achievements which we now take for granted, but without which we would have no working internet at all.

## Checksums

We begin with the concept of the humble _checksum_.  

It's 1952 and you're buying a can of soup at your local grocer.  The cashier enters the price of the can into a punch-mechnical regsiter, you pay your five cents, and happily leave the store with your dinner.

It's 1980, and owners of grocery stores want to keep track of their inventory.  Instead of having the cashier read the price tag and manually enter it, they are told to enter a product SKU sticker found on each product.  The cash register will later generate a report of all of the SKUs that were sold, helping the owner recaculate the store's inventory every night, enabling better decisions about which products are selling the fastest.  

A product SKU number might look like this:

03600029145

Unfortunately, even the best data-entry clerk is going to make a mistake once in a while, either transposing two of the digits, or leaving out a digit entirely.  In order to reduce the chance of mistakes, a _check digit_, which is a special case of a _checksum_, was added to the end of the number.  This single digit, appearing last, somehow magically verifies that all of the previous digits were entered correctly, and in the correct order!

This might sound impossible, but it's actually a pretty simple concept, thanks to mathematics.  Let's recreate the thought process behind inventing such a magical check digit, because it will illuminate the same concept which underlies all modern authenticity algorithms.

**Inventing a Check Digit**

Here again is the original SKU:

0 3 6 0 0 0 2 9 1 4 5

Now here's the challenge: invent a single digit which can somehow signal whether or not these SKU digits are correct.

Maybe we'd think to sum up all of the previous digits, and put the sum at the end:

0+3+6+0+0+0+2+9+1+4+5 = 30

So now our SKU number would be:

0 3 6 0 0 0 2 9 1 4 5 3 0

Now, the cash register could always use the last two digits as a check against the previous numbes.  Suppose the clerk entered a 7 instead of a 6:

0 3 7 0 0 0 2 9 1 4 5 3 0

The register would now compute a sum of 31, notice that the last two digits is not 31, and ask the clerk to re-enter the SKU.  Sweet!

But there are a few problems.  Our checksum scheme isn't perfect. First, what if the clerk enters the last digit or two incorrectly?  Then the checksum certainly won't match.  It seems that reducing the length of the checksum is paramount, so that it has less of a chance of being entered incorrectly itself.

Another problem is, what if two digits in the SKU get transposed?  The sum won't change at all, and the checksum won't be able to catch the error.

If we think beyond a simple sum, we can use math to help catch transposition errors by assigning a weighting factor to each position in the SKU.  For example, here's the UPC-A check digit algorithm:

* STEP 1: The first, third, fifth, seventh, ninth, and eleventh digits are first multiplied by three, then summed up
* STEP 2: The second, fourth, sixth, eighth, and tenth numbers are summed normally
* STEP 3: The sums from STEP 1 and STEP are added together
* STEP 4: The check digit is defined as the value between 0 and 9 that would need to be added to make the total an even multiple of 10.

Let's go back to our SKU:

0 3 6 0 0 0 2 9 1 4 5

STEP 1: 0*3 + 6*3 + 0*3 + 2*3 + 1*3 + 5*3 = 0 + 18 + 0 + 6 + 3 + 15 = 42
STEP 2: 3 + 0 + 0 + 9 + 4 = 16
STEP 3: 42 + 16 = 58
STEP 4: 2 (the next multiple is 60, which is 2 more than 58)

So the SKU with our check digit is:
0 3 6 0 0 0 2 9 1 4 5 2

This simple techique - multipling some positions by a weighing factor - guards against the most common kind of transposition, which is when adjacent numbers are switched.  Imagine that the 3 and 6 were swapped:

0 6 3 0 0 0 2 9 1 4 5 2

STEP 1: 0*3 + 3*3 + 0*3 + 2*3 + 1*3 + 5*3 = 0 + 18 + 0 + 6 + 3 + 15 = 33
STEP 2: 6 + 0 + 0 + 9 + 4 = 19
STEP 3: 33 + 19 = 52
STEP 4: 8 (the next multiple is 60, which is 8 more than 52)

8 isn't 2, so we can now catch the error, something that our simple sum couldn't do before.

Here's the key concept: the check digit has captured the essence of the entire SKU in a single digit.  

Given only the check digit, we cannot know what the original SKU numbers were.  But given both the original SKU and the check digit, we can confirm (or deny) that the check digit is a faithful shorthand for the entire SKU.

Before computers existed, we used shorthand representations to verify authenticity all the time.  Handwritten signatures are unique to every person, as are fingerprints.  They have been used for centuries to verify and authenticate people wishing to withdraw money at their bank, or for police to identify who stole the jewels (and who's innocent!).

## Hashes and Digests

The idea of a checksum expands into the modern concept of a _hash_, also called a _digest_.  I prefer the word _digest_ because it emphasizes the notion that every piece of data -- whether it's something as small as a product SKU or as large as the full text of a novel -- has a particular identity that can be expressed in shorthand form.

Here are a few of the most popular hash algorithms.  Just remember that they all operate on the exact same principle as our check digit: they step through the original data in small chunks, and use a mathematical formula to help ensure that even a small change in the original data will result in a big difference in the resulting hash value.

TABLE OF HASH ALGORITHMS GOES HERE for MD5, SHA-1, bcrypt
