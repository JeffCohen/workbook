# Linked Lists

We now use the atoms of memory locations to build slightly larger, more useful molecules.
If we put together a simple series of memory locations, we can make them work together to form a _linked list_.  A linked list is the simplest possible container for a collection of data elements.

A linked list is a linear series of _nodes_.  Each node is constructed from a pair of memory locations. The first location is responsible for storing the desired data (a single 64-bit numerical value); the other location is responsible for storing the memory location of the next node.

These memory locations are commonly referred to as the node "data" and "next pointer", respectively.

In order to represent a list, the following strategy is used.  One node is arbitrarily designated as the "head" node. Starting from the head, we attach subsequent nodes by using the "next pointer" as a way to refer to the next node in the list.  The ending node is therefore easily identified, as it will store a value of zero for it's "next" pointer.

Modern programming languages offer higher-level abstractions: strings, structures, and objects of arbitrary size and complexity.  So why are we talking about a linked list?

Every data structure described in the remainder of this book, and in fact that you will ever use in your software, can be defined in terms of linked lists.  It is the fundamental building block of all data structures.

One nice thing about a linked list is that it's pretty easy to maintain a notion of _order_.  When adding new items, the "next" pointers can be easily rearranged to "insert" a new item in the midst of the existing chain.  Removing items is also simple.  Imagine a line of elephants, each connected trunk-to-tail.  Removing an elephant simply requires the elephant behind to let go for a moment while the elephant is led away; after which the chain can be reformed.

If you can solve the challenge of building a your own linked list to manage some data that's meaningful - your MP3 collection, for example - then your brain will come to understand the mindset and the patterns that have been most crucial for the endeavor of computer science to advance.

  
