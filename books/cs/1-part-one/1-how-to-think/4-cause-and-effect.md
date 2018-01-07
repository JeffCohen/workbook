# Cause and Effect

One of the first scientific principles that we learn in school is that of _cause and effect_.  But we also know this from everyday experience.  If I hit a tennis ball with my racquet, the ball will be propelled forward  (hopefully!) through the air.  If I drink water, I'll be less thirsty.  If I put on a coat, I'll be warmer.  If I plug my phone into the wall, it will recharge.

Computer programming is just as predictable, or _deterministic_ as people like to say.  The computer operates by strictly following a set of instructions, and the instructions are written by us.  It cannot make things up.  It cannot even ignore the instructions that have been given to it.  The computer is completely incapable of improvising on its own. Even so-called "artificial intelligence" still requires the computer to follow a set of predefined rules (see the chapter on Neural Networks for more).

Yet, modern software has become so complex, and consist of so many possible instruction paths, that it may feel non-deterministic.  Bugs reported by customers often seem unreproducible.  Confidence in our ability to deliver code that works exactly as intended can be shaky at best.

We must take heart: things are not random.  Bugs do not happen by chance.  Adding that next feature need not be daunting.

We have many tools at our fingertips to help us cope with complexity.  The proper tool, wielded with skill, should make the code seem so simple as to immediately reveal the direct cause and effect.  

All programming languages are abstractions. The only "real" computer language is the long stream of ones and zeros, which are themselves just representations for certain instructions belonging to a finite set.  

When was say that a section of code is "hard to read", we mean that it the connection between the code and its effect is unclear.  This is why so many languages exist: there is no single programming language abstraction that will fit everyone's brain in the same way.  To some, Java is easy to read and well-written Java code exhibits behaviors that are obvious from its source code.  For others, Ruby provides the clear cause-and-effect relationship.  For still others, functional languages that do not maintain state seem best.

Whatever your choice, remember that everything you do is just a virtual billiard table: the number of balls and angles of the rails are determined by your progamming language, but the fundamental laws remain the same.  What goes up must come down. A line of code must execute, and it must do exactly what it says it will do.
