# Breaking Things Into Pieces

There's an old joke that goes, "How do you eat an elephant?  One piece at a time."

There are a few principles that run through every branch of computer science, but perhaps none are as pervasive or fundamental as the concept of divide-and-conquer.  When a large problem can be decomposed into a set of smaller ones, it is already on its way to being solved.

If the set of small problems can, in turn, be divided into even smaller problems, each tiny problem can often be solved trivially.  When all of the tiny problems have been solved, the large problem has been solved as well.

### Example: Alan Turing's Instruction Tables

At the close of World War II, Alan Turing was itching to build the first manifestation of his imagined "universal computing machine."  His unique perspective enabled him to recognize that a machine's ability to follow instructions of a logical sort was far superior to one that was restricted to numbers and brute calculations.  Coming from a pencil-and-paper world, he envisioned his machine as reading an "instruction table" for the machine to follow.  These tables would describe the microsteps necessary to accomplish a certain task, like adding two numbers together, storing a number in memory, or retrieving a stored value.

But almost as soon as he'd begin sketching out his plans, way before he had a chance to build the machine itself, he realized that developing one giant instruction table was neither practical nor intelligent. Finally, in a flash of insight, his imagination revealed to him that any section of instructions could be made into its own table. If the machine could remember where it left off, it could switch to the another table of instructions when needed, later to resume from where it originally left off.  

These subtables provided a way to store a reusable set of instructions which could be called upon as needed.  

He took this idea one step further, imagining an entire "hierarchy of tables," with the first "main" table loading the other tables based on conditionals or some other manner.  Alan Turing had used pure imagination to invent the concept of _subroutines._

In one broad stroke, Turing had invented both a practical solution to a complex problem (maintaining long lists of instructions) and a novel way of thinking that has endured for 75 years.  
