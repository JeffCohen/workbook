# Graphs

When I first encountered the term "graph" in computer programming, I thought it meant the kinds of graphs we learned to draw in school: bar graphs, pie charts, and so on.  In computer science, we use the term "graph" to mean something completely different.

Let us return to the concept of the binary tree.  Recall that the shape of a binary tree makes searching for a specific element easier than a linear linked list, and it's also easier to keep the container in a particular sorted order.

If we enhance the tree by removing the only-up-to-two branch restriction, and allow each node to have an unlimited number of branches, certain remarkable consequences begin appear. We have now discovered a a new kind of container, the _graph_.

When we transition from a binary tree to a graph, we also shift our terminology: branches are now called _edges_.  Edges connect the nodes in the graph.  Every node must have at least one edge, otherwise it would become disconnected from the other nodes and no longer be part of the graph.

Graphs can be used to represent city streets, geographic systems, electrical grids, transportation systems, and social networks, to name a few.  The graph can represent real-world constructs and phenomena remarkably well.

There are some amazing algorithms that operate on graphs as we've described them, but there are a few important variations that can turn this container into a supercontainer.

## Directed Graphs

We can do amazing things with our graph if we enhance the edges with one additional aspect, _directionality_.  A _directed graph_ is one in which each edge is associated with one particular direction.  Imagine a city in which every street was a one-way street.

It is also possible to have edges that can allow for movement in both directions, but this is much less common.

When we add the notion of direction to the graph, a number of interesting consequential properties can result:

1. An _directed acyclic graph_ is a directed graph in which no "loops" are possible.  Once you begin travelling from a particular node, you'll never get back to where you started.  Spreadsheets, source code version histories, certain types of electronic circuits, scheduling systems, and garbage collectors are examples of directed acyclic graphs.
2. A _weighted directed graph_ is a graph in which each edge is assigned a "weight" or value.  Weighted directed graphcs become very useful for real-time traffic analysis, transportation logistics planning, least-cost algorithms, and more.
