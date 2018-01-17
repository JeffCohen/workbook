# Keeping Secrets

One of the oldest applications of encoding is the sending of secret messages. Kings and Queens throughout history have sought to communicate in secret, while their adversaries did their best to overhear their plans.

Over time, schemes to encrypt secret messages grew more sophisticated, while schemes to intercept and decrypt those messages tried to keep up.

We owe much of our computer science tradition to the British efforts during World War II to decrypt Axis messages.  Indeed, Alan Turing invented the entire era of digital computation for the express singular purpose of decrypting German messages that had been encrypted by their "enigma" machine, which the Germans believed to be entirely secure and undecryptable.

The science of warfare had come to depend upon cryptography; without it, waging war would have been impossible.  An ability to decrypt the other side's secret messages were seen as a way to tip the scales forever toward the side of the decryptor.

In the 21st century, some say we have finally reached an encryption zenith.  Messages are stil subject to interception, but they are practically impossible to decrypt.  When used for good, this encryption is one of the greatest accomplishments of computer science.

## Cryptography 101

The field of cryptography is a large one.  We will skim the surface in order to highlight the most common ideas that surface most often in ordinary application development.  But they all share a common theme: electronic communications require some level of _privacy_, and some level of _authenticity_.  Both are achieved by using techniques sprung from the field of cryptography.

Perhaps we're trying to keep our password secret when using our bank's website.  Maybe an email needs to be transmitted in such a way that only the intended recipient can read the message.  Or perhaps we simply want some assurance that the website that we're using truly is run by the organization it purports to be.

At its core, cryptography can be described as a simple procedure:

[IMG OF PLAIN MESSAGE -> CIPHER -> ENCRYPTED MESSAGE]

We always start with the original message we wish to keep private or send to someone else.  Then, some sort of _cipher_ is applied to the message which turns it into an encrypted message.

The nature of the cipher, how to apply it to the plain message, and estimating how difficult it would be for an unauthorized person to decipher the encrypted message -- these considerations are what modern cryptography is all about.

## Symmetric Encryption

This is the simplest form of encryption, but still very powerful.  The same cipher is applied to both encrypt and decrypt the message.

For example, the age-old "Caesar cipher" works by advancing each letter in the message by some fixed amount, say four positions forward.  So every _A_ becomes an _E_, every _B_ becomes an _F_, and so on.

This is a symmetric cipher because once the cipher is known, it is easily reversed.  This reversibility is essential, so that the intended recipient can properly decode the message.  

Symmetric algorithms suffer from a classic problem known as _key exchange_.  In order for me to send you a message that's been encrypted with a symmetric algorithm, I must first tell you the algorithm.  That might be possible if I could whisper it in your ear, but if you are on another continent and require me to email you the information, then we're back to step one: how do I ensure that my email informing you of the symmetric algorithm is itself encrypted?

For centuries - perhaps millennia - this problem was not only unsolved, but considered to be forever unsolvable.

## Asymmetric Encryption

In the early 1970's, the solution to the key exchange problem was achieved, a true miracle occurring at the intersection of mathematics and computer science.  The solution, known as _public key cryptography_, completely revolutionized communications on our planet.

Today, our security and comfort with the internet is based on it.  You can view your bank account from your phone only because of public-private key cryptography.  Everything we do only that requires some amount of secure transmission - purchasing airplane tickets online, using that cool new tap-you-phone-to-pay system at your local coffeeshop, or watching a movie on NetFlix - are only possible because of the breakthrough of solving the key exchange problem.

Here's how it works.  In mathematics, prime numbers hold a certain fascination.  They do not occur at predictable intervals, so it cannot be proven that there is an infinite number of them (though it sure seems like there should be).  And asking a computer figure out the next prime number, or even if a given number is prime in the first place, can take a lot of computational time.  And when it comes to codebreaking, using a cipher that would require a lot of time to break is a good thing.

So instead using symmetric encryption that uses one cipher for both encryption and decryption, we use two different ciphers: one to encrypt, and the other to decrypt.  This is possible because of some complicated mathematics.  

We choose two very large prime numbers and multiply them together to get a much, much larger number.  This large number is part of a mathematical formula that will relate the original two prime numbers together.  As long as one of the prime numbers is kept private, it's impossible to calculate the other prime number in the equation.

One misconception is worth clearing up: it's often stated that the public key is used for encryption, and the private key is for decryption.  That's one use case, but it also works the other way around: you can use the private key for encryption, and then decrypt with the public key.  It doesn't matter which one you use first.  The important thing to know is, what one key can encypt, the the other can decrypt.

It is this feature of public-key cryptography that makes digital signatures possible.  We will encounter digital signatures later in this chapter.
