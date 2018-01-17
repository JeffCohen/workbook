# Memory Locations

The most fundamental of all data containers is the _memory location_.  This usually refers to the kind of electronic memory that's built into the computer circuitry, as opposed to hard drive storage or flash storage.

A memory location was initially conceived by Alan Turing in his quest to invent a technique for computing devices to temporarily store certain numbers for a few moments, so that they could be retrieved later during a certain step of a process.

Today, modern computers use molecular substrates to reliable store and recall numerical data, but we still imagine them as mail slots, cubby holes, or other familiar physical metaphors.

## Addresses

Each memory location is associated with a specific _address_ that uniquely identifies that location.  Modern operating systems provide a layer of abstraction on top of the physical hardware by giving each process a "virtual" set of memory addresses, which are mappyed by the operating system to physical addresses.  This virtualization allows each process to access memory consistently, even though the underlying system may actually "page" the memory onto other storage devices (like the hard drive) as needed in order to maintain the illusion of multitasking in a shared memory space.

The size of a single memory location is measured in bits. The number of bits that can fit has increased over the years.  The personal computing era begin with 8-bit values per location.  Modern smartphones and tablets can now store an entire 64-bit value in a single location.  (For the remainder of this book, we will assume that a single memory location can store a 64-bit value.)

## Values

If we only used computer memory to represent numbers, computers wouldn't be very useful.  The breakthrough in computing came with the realization that numbers could represent other things.

At first, certain numerical values were a shorthand to refer to a particular "instruction" which was a hardcoded built-in ability of the computer itself (for example, the ability to add two numbers together).

Later, we extended this idea of interpretation to allow numbers to represent letters of the alphabet, custom instructions, color values, geolocation coordinates, and almost anything else we can imagine.

## Pointers

However, despite the infinite variety of possible interpretations for any given memory address, a value stored in a given memory location is always approached in one of two ways:

1. as data: that is, a numerical value or equivalent interpretation of some real-world entity; or,
2. the address of another memory location

Those are our only two choices.  When we choose to interpret a location's value to be the address of another location, we call that value a "pointer," "memory pointer," or "reference."
The concept of pointers is one of the most bizarre and intimidating concepts that new programmers face.  But it represnets a breakthrough concept in computer science, and i still a fundamental particle in today's programming universe.

Pointers enable complex, heterogeneous structures to emerge from an otherwise linear slate of data buckets.

Some programming languages, like `C`, require the programmer to be quite preoccupied with the tasks of allocating memory locations as needed by the program, and then releasing them back to the operating system when they are no longer needed.

A special syntax enables the programmer to designate certain values as pointers as opposed to scalar values.  This burden results in various headaches during programming, but offers speed and ultimate flexibility when writing algorithms.

Other languages, like `Java`, `Ruby`, and `Python`, abstract the gory details of memory allocation away from the programmer, reducing complexity and removing a common source of errors.

However, this convenience comes at the cost of efficiency and a (potentially) non-deterministic "garbage collector" to ensure that memory locations can be reused efficiently.
