Preliminary Weekly Schedule for Fall 2020
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Week 1: 27 August
-----------------

Sessions
^^^^^^^^

- organizational matters
  - introduction: instructor, TA
  - course objectives
  - course texts
  - course roadmap
  - MS Teams discussion channel (mandatory subscription – link through Sakai)
  - how to get help
  - prerequisites and review topics: 271 313 overview
- motivation, including embedded systems
  - brief overview of batch versus event-based programming
- requirements
  - functional: y = f(x)
  - nonfunctional: additional properties of f, e.g.
  - testability
most important nonfunctional requirement
allows testing whether functional requirements are met
good architecture often happens as a side-effect (APPP pp. 36-38)
performance
scalability
e.g. performance for large data sets: asymptotic order of complexity
(big-Oh) in terms of input size n
reliability
maintainability
static versus dynamic NFRs
discussion of projects 1 and 2
course software with demo
prerequisite assessment
Reading/Podcasts

Object-Oriented Programming Using Java (OOPUJ) chapters 1, 2.1, 2.2, 3
OO Introduction; UML Class Diagrams & Syntax; Inheritance & Method Overriding
SE (Software Engineering) Radio episode 1 on patterns
Full list of all SE Radio episodes: http://www.se-radio.net/feed


Week 2: 1 September

Sessions

announcements
data structures
linear vs. nonlinear
position-based vs. policy-based (see also here)
performance
tying data structure choices to requirements
data abstraction
addressing: pointers, references
aggregation (product types): structs, records
example: node in a linked list
variation (sum types): tagged unions, multiple implementations of an interface
example: mutable set abstraction
add element
remove element
check whether an element is present
check if empty
how many elements
several possible implementations
reasonable: binary search tree, hash table, bit vector (for small underlying domains)
less reasonable: array, linked list
see also here
group activity: problem 4 on prerequisite assessment
Reading/Podcasts

OOPUJ chapters 4, 5
Object Roles and Polymorphism; Method Overloading

Week 3: 8 September

Sessions

announcements
project 1/software installation check-up
Quiz 1 next week
discussion of project 2
basics of object-oriented programming up to genericity (Generics)
Inheritance and Composition
Interfaces
Abstract Classes
More on Test-Driven Development
JUnit Annotations, test methods, and examples
Reading/Podcasts

OOPUJ chapter 6
OO Software Analysis and Design
SE Radio episode 2 on dependencies
Homework

Project 1 due Tuesday, September 8


Week 4: 15 September

Sessions

Quiz 1: short quiz on first 2 SE Radio episodes, patterns and dependencies
announcements
test 1 roadmap on Sakai
basics of object-oriented programming - through the rest of the online document
Generic types
Supplemental material: Java Collections, data structures, and Object-inherited methods (see course slides)
Optional topic - Coad: modeling with UML and color: overview, book chapter
reverse engineering JUnit tests (test 1 topic)
introduction to Design Patterns
Overview
Factory method, Strategy, Visitor
Resources
tutorialspoint website
Bob Tarr pdf slides on Sakai
APPP Design Pattern references
Factory: Chapter 29
Strategy: Chapter 22
Visitor: Chapter 35
project 3 introduction (only if time)
Reading/Podcasts

Bob Tarr pdf slide sets on Factory, Strategy, and Visitor Design Patterns
Agile Principles, Patterns, and Practices in C# (APPP) chapters 1-3 and Design Patterns chapters as above
Agile Practices; Extreme Programming Overview; Planning
Factory, Strategy, and Visitor Design Patterns
Homework

Project 2 due Friday, September 18


Week 5: 22 September

Sessions

test 1
announcements
project 3 team formation
more Design Patterns
Decorator and Composite
Visitor revisited
Resources
tutorialspoint website
Bob Tarr pdf slides on Sakai
APPP Design Pattern references
Decorator: part of Chapter 35
Composite: Chapter 31
Visitor: Chapter 35
project 3
Shapes interface and Visitor<Result> generic interface
concrete Shapes: Circle, Rectangle, ...
concrete Visitors: Draw, Size, and Bounding Box
project 3 TODOs (Android Studio: Tools => View => TODO)
project 3 Decorators: Outline, Stroke, Location, ...
Android Canvas and Paint classes and online documentation
Unit tests using Gradle and Mockito; the Fixtures class
Reading/Podcasts

Bob Tarr pdf slide sets on Decorator, Composite, and Visitor Design Patterns
APPP chapters 4-6 and Design Patterns chapters as above
Testing; Refactoring; A Programming Episode
Decorator, Composite, and Visitor Design Patterns
SE Radio episode 167 on unit testing


Week 6: 29 September

Sessions

announcements
team members posted on Sakai and Piazza
team repositories: cs313f17teamNp3
discussion of test 1
continued project 3 detailed discussion
more classes, including Fixtures
Mokito "white box" unit tests (esp. for the Bounding Box Visitor)
how to run the unit tests
expressions and vexpressions Java examples - using a Visitor<Result> interface to visit arithmetic expressions
coding guidelines
UML diagrams and 30-minute in-class group activity
create a UML class diagram for project 3 (hand-drawn is best)
Submit (a picture of) the diagram plus a brief write up about how you did it on Sakai - one per group
Agile development (if time)
agile development principles
MVP (Minimal Viable Product – low risk) versus BUFD (Big Up-Front Design – high risk)
indirection: performance versus flexibility
Reading/Podcasts

APPP chapters 13 & 14
Overview of UML for C# Programmers; Working with Diagrams
Mokito overview
Android 4 App Development Essentials, Chapters 1-4, available here: http://www.techotopia.com/index.php/Android_4_App_Development_Essentials
Note: even though this reading describes installing and using Eclipse, we will use only Android Studio in this course

Week 7: 6 October

Sessions

announcements
any remaining questions about project 3
principles of object-oriented programming: SOLID
S - Single Responsibility Principle
O - Open Closed Principle
L - Liskov Substitution Principle
I - Interface Segregation Principle
D - Dependency Inversion Principle
References
Uncle Bob's Principles of OOD
Pablo's SOLID Software e-book
SOLID Principles in C#
SOLID and other basic object-oriented design principles ("SOLID + 2"): presentation
overview
extended overview by Uncle Bob with links to detailed articles
information hiding/minimize coupling/Law of Demeter (Tarr p1-)
favor composition over inheritance (Tarr p9-)
Coad's rules (Tarr p22-)
role-based design (Tar p23-)
dependency inversion principle/design with interfaces (Tarr p33-, Coad)
open-closed principle (Tarr p40-)
Liskov substitution principle (Tarr p51-)
single-responsibility principle (cohesion part 1)
interface segregation principle (cohesion part 2)
package-level principles: cohesion and coupling
acyclic dependencies
Android example programs
Android framework
architecture
overview
activities and their lifecycle (scroll about 60% down)
tutorials
examples - search for "android-java"
hello-android-java - notification
simplebatch-android-java - scrollable text output
simpledraw-android-java - drawing simple shapes based on lines
Kotlin as a potential Android language
Java 8-12 overview (may delay until Week 8)
Reading/Podcasts

Android 4 App Development Essentials, Chapters 5-8
SE Radio episode 46 on refactoring - will be on Quiz 2 on October 20


Week 8: 13 October

Sessions

announcements
any remaining questions about project 3
reminders: Quiz 2 next week (2 SE Radio podcasts), test 2 the following week
Java 8-12 overview if not done in Week 7
Agile development overview
more design patterns
Adapter
Facade
Observer
State - including a review
Command
modeling and introduction to Project 4
Model-View-Adapter (MVA) architectural design pattern
modeling dynamic, event-driven behavior with state diagrams
model states versus view states
state diagram examples
stopwatch model (hardware perspective)
our stopwatch model
Project 4 introduction and overview
stopwatch-android-java overview (if time)
Reading/Podcasts
APPP chapters 33, 23, 32, 15, 21
Adapter - 33
Facade - 23
Observer - 32
State - 15
Command – 21
Homework

Project 3 due Friday, October 16



Week 9: 20 October
Sessions

Quiz 2: short quiz on second 2 SE Radio episodes, unit testing (167) and refactoring (46)
announcements
test 2 in Week 10
Android
details of the activity lifecycle (scroll down about 60%)
how to rotate the emulator (just click the rotate icon!)
saving the activity state
clickcounter - event-based interaction
Details of stopwatch and clickcounter source code internals
UML extended state diagrams
In-class exercise to create an extended state machine for Project 4
UML Extended State Machines (with guards)
the implicit clickcounter state machine
in-class group exercise: create a dynamic UML extended state machine model for Project 4
capture these to submit as part of each Group's Project 4 submission
Reading/Podcasts

APPP chapters 21, 23, 32, 36
Command and Active Object: Versatility
Façade and Mediator
Observer: Evolving into a Pattern
State
SE Radio episode 65 on embedded systems (covered in quiz 3)



Week 10: 27 October
Sessions

test 2
detailed discussion of testing in clickcounter and stopwatch examples
see the Android new build system user guide for info about build.gradle and Android testing
in-class group exercise: create a comprehensive set of unit tests for Project 4
also capture these to submit as part of each Group's Project 4 submission
Reading/Podcasts

APPP chapters 21, 23, 32, 36
Command and Active Object: Versatility
Façade and Mediator
Observer: Evolving into a Pattern
State
SE Radio episode 65 on embedded systems (possibly covered in quiz 3)



Week 11: 3 November

Sessions

test 2 discussion, as needed
time to finish the Project 4 UML Extended State Diagram and comprehensive list of unit tests
time to work on Project 4 in your groups
Reading/Podcasts

same as week 10
relevant architectural/design patterns
State pattern (APPP chapter 36)
event listener/callback
one versus multiple listeners
Observer pattern (APPP chapter 32)
UI architectural patterns
Model-View-Adapter (MVA)
Model-View-Controller (MVC)
Model-View-Presenter (MVP) (see also APPP chapter 38)
comparison between MVA and MVC
Homework

Project 4 extra credit tests (and extended state machine) assignment due Saturday November 7 by 11:55pm


Week 12: 10 November

announcements
test 3 is Thursday of Week 13 (November 19) - practice test is in Week 12 on Sakai
event-driven programming - Test 3 roadmap items
textual versions of UML (extended) state diagrams
saving and restoring Activity state
event-driven programming
Java inner classes and listeners (Observer pattern)
threads, runnables, the run and start methods, ...
Model-View-Adapter in clickcounter and stopwatch (also Test 3-related)
MVP and MVVM
possibly time to work on Project 4 in your Groups
Reading/Podcasts

APPP chapters 7-9, 18, 19
What is Agile Design; The Single-Responsibility Principle; The Open/Closed Principle
Sequence Diagrams
Class Diagrams
SE Radio episode 12 on concurrency (covered in quiz 3)

Week 13: 17 November

Code smells and refactoring
agile development principles and process/practices (if needed)
general overview of software testing
test-driven development
continuous integration/delivery
maybe time to work on Project 4 in your Groups
Thursday: test 3
Reading/Podcasts

APPP chapters 10-12
The Liskov Substitution Principle (LSP)
The Dependency-Inversion Principle (DIP)
The Interface Segregation Principle (ISP)
SE Radio episode 12 on concurrency (possibly covered in quiz 3)



Week 14: Thanksgiving Break - merge with Week 15

announcements
course feedback surveys close TBD
Quiz 3 next week -> replaced with time for feedback surveys, if needed
concurrency
interleaving
Scala example
calculating the number of possible interleavings
nondeterminism
race conditions
Scala example: increment of shared variable
key difference between these two examples?
Java threads
Java examples
overview
physical versus logical concurrency
CPU-bound versus I/O-bound activities
CPU-bound example
I/O-bound example
run-to-completion versus coordination
(conflicting) design forces:
safety
liveness
performance
throughput
latency
jitter
example: prime number checker
direct execution
asynchronous (background) execution
cloud-based execution
possibly time to work on Project 4
Reading/Podcasts

same as week 13
SE Radio episode 23 on software architecture (covered in quiz 3)



Week 15: 1 December

announcements
test 4 (final exam) Friday next week 1-3pm - practice exam in Week 15 folder
No SE Radio podcasts on the final exam!
Cloud Computing - XaaS (X as a Service)
Cloud services and benefits
in-class time to finish Project 4
Homework

Project 4 due Saturday night, December 5, by 11:55pm
Reading/Podcasts

SE Radio episode 110 on roles in software engineering


Final Sessions (Week 16): Friday, 11 December - final exam
announcements, if any
test 4 (final)
Reading/Podcasts

SE Radio episode 150 on software craftspersonship (OK to wait until break)
