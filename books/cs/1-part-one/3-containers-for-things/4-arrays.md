# Arrays

For all the power provided by linked lists, they suffer from one crucial drawback: speed.  We do not create lists of items merely to contain a list of items.  The point of a list is do something creative with it.  And this is where the linked list structure is less than ideal.

Imagine that we used a linked list to keep track of a list of business contacts.  One day, you forget the phone number for your boss, Margaret Smith.  Fortunately, you wrote a program to retrieve a contact from the list given their name.  Unfortunately, you used a linked list.  Your program will need to search for Margaret's node by starting at the head node, and walking the chain one node at a time until it arrives at the right node.

If you're lucky, Margaret's node is stored at the near the front of the list, and it takes only a few hops down the chain to get to the right node.

But if you're unlucky, Margaret's information is further along, or worst case at the very end.  The more contacts you add to the list, the greater your chances of having to wait a long time to retrieve any given contact.

This dilemma gave rise to an improvement over the linked list: the _array_.  An array is a series of memory locations that guarantees access to any node in the same amount of time.

Even arrays are not panaceas.  Access to any random element can now happen in a predictable fashion, but for array sizes are traditionally fixed - you can't grow the array beyond the initial size.  Some languages allow you to bypass this requirement, at the cost of additional time and memory if you choose to grow the array after its initial construction.

Still, the advent of arrays made linked lists nearly obsolete for all but the lowest-level programming tasks.
