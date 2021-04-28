---
title: Short Names Make the Compiler Faster
date: 2021-04-22 
author: psu
---

As a long time programming language nerd it is one of my sworn duties to check in on the functional language landscape every few years to see how things are going. These days what this normally means is looking at Haskell again to see if I can understand it this time. This is certainly an arbitrary choice of one tool among many, but it is not made without some thought. First, I have a buddy who is really into it and will, for some reason, helpfully listen to my usual whining when things don't work. Also, if you look at the rest of the language landscape, there are good reasons to consider Haskell as the most interesting choice of the lot right now.

Here is a totally subjective and unfair, but still correct, bucketing of the current PL nerd landscape into large categories:

1. Nostalgic for Lisp Machines (Racket, scheme, etc). Just get over it.

1. C (not really) but better (rust, Swift, etc). Too much like work.

1. Actually javascript. Too much like work I never want to do.

1. Actually Java (clojure, scala, etc)

1. ML and friends (SML, OCaml, ReasonML)

1. Actually .NET (F#)

1. Haskell

Out of this list I actually downloaded and tried the current versions of scala, SML, OCaml, and F# just to see how they were doing. The scala and F# tools are pretty mature, benefiting from the industrial tooling support for their virtual machines. Sadly, you have to install their virtual machines to use the tools. .NET is OK, but I can't abide the JVM. The ML family is like your Gen-X uncle who still thinks that the late 90s are the peak of modern civilization. They want you to know that you cannot escape their foundational influence and that they are kind of bitter that not enough people pay attention to them anymore. When you try to use their stuff you find that they didn't even bother to put command line editing to their REPL. If they care that little then there really isn't any point in talking to them. That said, ocaml remains the most almost usable tool of the bunch here. Too bad about that syntax though.

Having done some due diligence I went and got the latest Haskell again. I had two main motivations.

1. Look at the current state of the tool chain from the point of view of an experienced programmer who doesn't have much experience with it.

1. Look at two interesting tools for transforming text into other text: <a href="https://pandoc.org">pandoc</a> for general processing and <a href="https://jaspervdj.be/hakyll/">Hakyll</a> for making web sites.

So I did these things, and set up a toolchain that would let me read the `pandoc` and `hakyll` code to try and understand some pieces of it. Here is are one or two things that I think.

Haskell's out of box experience is pretty good, especially compared to its other more academic competitors. The base interactive environment is a nice shell. The editor support for at least `emacs` and `vs.code` is decent, though it's not the easiest thing in the world to set up. For even quicker stuff there is at least one integrated macOS application where you can type code at simple sandboxes without getting too annoyed. Haskell also seems to be enjoying a relatively large amount of modern nerd interest, so there is a lot of easy to find sample code around the Internet that you can play with to learn how things work. So, a bit surprisingly to me, Haskell seems like the most approachable tool for the functional programming dilettante that just wants to dabble a bit and have an OK time doing it. 

Still, I think there is at least one thing that keeps Haskell from being easier to learn and use than it might be, even for fairly experienced practitioners like myself: Haskell code is just too short.

In my first programming job in college my boss used to joke that the "K&R" method for writing C code involved using short variable names because "short names make the C compiler run faster." The style of the C code in the famous book by K&R was often needlessly terse. The joke here is also a reference to old BASIC interpreters (notably Applesoft BASIC, RIP) that only stored the first two letters of every identifier no matter how long you made it, but still had to waste all that extra CPU time to parse to the end of your long names if you used them. So here, long names literally made your code slower.

The prevailing Haskell code style makes it clear that the K&R spirit lives on. Although to be fair it's not really just the Haskell people that have this problem. This syndrome is pervasive in the "typed higher order functional language" world and has propagated downstream into almost every modern language that has decided to implement these ideas. But, for practical reasons all of my gripes below will be about Haskell even though they apply much more widely. For example, even Swift, which is decidedly more verbose in most ways, seems to have a case of "shorter code must be better" envy.

So to repeat: Haskell code is too short. In particular, a ton of the example code in various resources designed to teach Haskell to beginners is too short.

Many programmers are overly enamored of a code writing style that whose main goal seems to be to make your program look like the mathematical exposition in a paper about algebraic geometry. The notation and naming conventions have evolved in a way that results in the most *general* code possible being expressed in the *fewest* letters. At some level this makes sense. If you are writing a program to iterate over a `List` of `Widgets` then it makes sense to encode the semantic meaning of the objects you are looking at into the names that in the program ... e.g.

    for widget in listOfWidgets { ... whatever ... }

But in Haskell it's very easy to write code that walks over lists of *anything*. Then what do you use for names? Actually writing long but still completely abstract names looks bit silly:

    map someFunction (thing:listOfThings) = someFunction thing : ...

More letters in the names here don't necessarily increase how meaningful they are. Thus, Haskell tends to go for the shortest and most abstract names possible in cases like this:

    map f (x:xs) = f x : map f xs

Here `x` is any list *element* and `xs` is the *list* of the *rest of the elements*. Experienced readers know this by heart, but for me this notation was as hard to get used to as <a href="https://en.wikipedia.org/wiki/Einstein_notation">Einstein Sum notation</a> in physics ... and let's be honest, that shit sucks too. My eyes scan the code and are barely able to register that the dummy variables are there.

I'd probably be happier with something like this:

    map f (element:list) = (f element) : map list

Here at least you can more easily guess that `element` is a single value and `list` is a list. Most Haskell people probably find this to be redundantly verbose at best. But I think even in this most abstract of settings, giving a small semantic hint to the reader does not hurt. But maybe there is another way. I've read that if you include the type signature as documentation it makes things easier. So here:

	map :: (a -> b) -> [a] -> [b]

Does this clarify that `x` above is a thing while `xs` is a list? I guess it does once you have learned the precedence and association rules in the signature notation and you've also learned how to uncurry function arguments in your head.

In practice this should be a small thing since code that is *actually* this completely general tends to only live in the relatively rarified air of the standard library or whatever.

Except ... except. It seems like every book about Haskell, every online tutorial, every beginner's guide has an early section with a loving missive to the type system and its huge and powerful abstraction hammer and then proceeds to show you *pages* of code signatures filled with `xs`, `ys`, `as`, `bs`, etc. The <a href="https://www.haskell.org/tutorial/">"gentle" tutorial to Haskell 98</a> introduces type variables in its second section. The incredibly comprehensive _Haskell Programming from First Principles_ hits them in its third chapter in the tutorial on Strings. _Real World Haskell_ hits them on page 27. Even Graham Hutton's excellent and eminently practical  <a href="https://www.cs.nott.ac.uk/~pszgmh/pih.html">_Programming in Haskell_ </a> hits this idea on a pretty early page 29. 

It's understandable that Haskell enthusiasts would be enthusiastic about these language features. They are sort of why the language exists. But they should have mercy on people who just want to know how things work at the bottom before climbing the abstraction tower.

To me a lot of the Haskell literature aimed at beginners in the language would be more effective if they stuck to concrete types and no polymorphism until much later in their exposition, and then introduced polymorphism and type classes at that point. The emphasis on the more powerful aspects of the type system implicitly encourages people to write code at a higher level of abstraction than is usually needed. Overly abstract code leads to overly abstract names which leads to names that are in the "the more abstract, the shorter they should be" style. The result, in my experience is that a lot of Haskell code ends up being too short, too terse, and too hard to read.

Now, a lot of this is how the language is designed and is thus unavoidable. You can't just go in there and add keyword style arguments and make everyone use them. But, I do get a sense that people think that this is a feature and not a bug. And I would disagree.

I'll end with particularly annoying habit that shows up in the larger pieces of Haskell code that I have read. The code will import things from external modules like this:

    import qualified Some.Readable.Utility.Type as T

The `qualified` keyword here after `import` means that you will have to use qualified names to refer to things exported from the module. The first bug in the language is that this is not the default (and maybe the only) behavior that is available. I cannot for the life of me figure out why anyone would ever use the non-qualified style of `import` for a piece of code that is longer than a screen long. Not even `perl` would do this to you. 

Qualified names are more readable and robust because they keep the namespaces explicit and separated and they immediately give the reader the scope of the name they are looking at, which is good. Tell me where your code is coming from, don't make me use mouse hover in the IDE to figure it out. Code should be written to make life easy for the reader, not the writer.

Still, the above use of qualified import destroys all of this utility by taking whatever nice readable module name might have been there and collapsing it to ... `T`. I assume two things about people who do this:

1. Their editors don't have autocomplete.

1. They are trying to save a few precious CPU cycles in the lexing stage of the compiler.

I guess this is all noble, especially since the compiler can use all the help it can get running a bit faster. But if you want humans to be able to read the code, do us all a favor and spell that shit out.

Happily, I have noticed one thing about the modern Haskell tools that might point the way to a better future. I find when I load code that uses unqualified imports into my text editor backed up by the "language server" editor interface I get helpful suggestions spelling out the long names of all the things being imported from the module and into my namespace. Maybe this heuristic could be expanded to not only make all imports qualified, but also automatically provide more readable namespace prefixes to the names that get pulled in this way. Maybe this small bit of nudging from the tools could lead us to a future where even seasoned Haskell programmers will routinely use names longer than one letter long for everything instead of just type names and variables that are not lists.

Dare to dream.





