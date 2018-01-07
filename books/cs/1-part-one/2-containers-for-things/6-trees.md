# Trees

Let's go back to the design of a linked list: each node in the list consists of two parts: one part to store data, and the other to store a pointer.

Let's rename _pointer_ to _branch_ to help us visualize things a bit better. If we expand our definition of a node to allow more than just one branch, we end up with an entirely new kind of structure called a _tree_.  Trees have some amazing properties that open up all kinds of algorithmic possibilities.

Trees are used to implement database systems, solve complex routing problems, store ordered data efficiently, represent complicated heirarchical data, and more.

## Binary

We start with the original linked list node and modify it slightly by adding a second branch.  Now, each node can point at two neighbors instead of just one.  A tree in which each node contains two branches is called a _binary tree_.

By naming the two branches "left" and "right", we have devised a more efficient structure for holding data.   Consider the following two structures, one a linked list and the other a tree.

1. How many steps of operation would it require to navigate from the head of the linked list to the node containing the number 10?
2. How many steps of operation would it require to navigate from the root of the linked list to the node containing the number 10?
3. How many steps of operation would it require to insert the number 7 into the linked list?
4. How many steps of operation would it require to insert the number 7 into the binary tree?

It should be clear that using a tree can drastically reduce the number of steps required to store and retrieve data.

Nodes which have no branches are called _leaves_.  Leaf nodes end up with some startling properties, which we will examine further in the chapter on algorithms.

## Heaps

A _heap_ is a tree that follows the specific rule: parent node values are always  ordered with respected to their children.  If the parent value is always greater than the children, it is called a _max heap_.  If the parent value is always less than the children, it is a _min heap_.

Unlike a typical binary tree, it is not possible to traverse all of the nodes of the tree in order.  Although parent-child order is guaranteed, *sibling* order is not.

If you can't traverse a heap in absolute sorted order, why use a heap?  There are actually several wonderful uses of heaps.  Perhaps the most famous is as a very efficient implementation of a priority queue.  Highest-priority nodes will sort ot the top (or vice-versa), make it very easy to consume the nodes in priority order.  Sibling nodes will have equal priority, and so by definition order doesn't matter.

Therefore, traversing a heap in order is equivalent to popping items from a priority queue; and pushing new elements will update the queue while preserving priority order.

Using a heap is also amongst the fastest ways to sort a collection of data, using the so-called _heapsort algorithm_.
