
# Queues

Now that we've seen linked lists and arrays, a simple twist yields a most useful invention, the _queue_.  A queue has the added characteristic that new elements are added at one end of the list, but removed from the other.   Consider a line in the grocery store.  Customers enter at the back of the line, and are serviced at the front.

A queue does not offer access to any random element, so it is unlike an array. But it is often implemented by using an array and keeping track of the "front" and "back" indices, avoiding the slowness associated with linked lists.

There are actually three common queue flavors, which we will now look at.

## FIFO

The _FIFO_ queue, short for "First In, First Out", is the kind of queue we typically find in the real world.  At the grocery store, boarding an airplane, driving to work - these are all FIFO queues in which the person to get in line first will be the first to be granted their freedom.

Like all queues, only two primary operations exist:

1. you can _push_ (i.e. add) a new element onto the end of the queue
2. you can _pop_ (i.e. remove) the front element from the queue

## LIFO

The _LIFO_ queue, or "Last In, First Out" queue, is more commonly called a _Stack_.  Stacks are extremely useful containers for many programming tasks, such as implementing calculators and expression evaluation.  We refer to a chained series of function calls a _stack_ because that's exactly how your favorite programming language keeps track of the execution point in your program.  Local variables are generally allocated in memory using a stack structure.

## Priority

One of the most useful types of queues is the _priority_ queue.  In this kind of queue, the _push_ and _pop_ operations are still supported, but the elements being pushed have some kind of additional characteristic, generally called a priority value or priority level, that serves to modify the position of the item within the queue.  Higher-priority items are allowed to "jump" the queue and bypass lower-priority items that were added first.

<<Apollo 11 landing example here>>
