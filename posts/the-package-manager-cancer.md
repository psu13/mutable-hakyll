---
title: The Package Manager Cancer
date: 2021-04-24
author: psu
---

I hate package managers. 

I sort of liked the first one that I used (<a href="https://www.cpan.org">CPAN</a>) but in retrospect it was terrible too.  Generally package managers come to be when you have a programming language or tool set where large systems are meant to be organized in terms of smaller libraries, or *modules*. Modules let you encapsulate related abstractions together and manage the namespace that is available to access those abstractions. Most systems like this then have some base set of modules that that is included in the default environment as a single unit that implements the core runtime and some high level library functions that people think most people will need. You don't have to do anything to use these, they are always around. These tend to also be tested and qualified together so you can be pretty sure they will work well and be stable.

Finally, there will be another collection of modules that build on the base set, that are not included in the base set and not qualified with it because for whatever reason they are not seen as universally useful. This when things get complicated because now you have a hard set of problems to solve:

1. Where do you store the modules and how do you find them?

1. Where do you put the modules so that the compiler and other tools can see them?

1. How do you coordinate building all the modules so that they build in the right order?

1. How do you update to newer versions of the modules to fix bugs without breaking anything upstream?

It has been the dream of the nerd universe to build an automatic tool to solve these problems since ... well since the first package manager. And no one has succeeded yet. 

Most of these systems start with the idea of encapsulating the meta-data about a module and its dependencies in an abstraction called a *package*. You then make a giant repository of packages and their dependencies and run a simple graph algorithm to figure out how to build any given thing. How hard could it be? It turns out that dealing with packages that change is really hard, and no one has really managed to crack it. My feeling about package managers is that they are solving the wrong side of the problem at the wrong level of granularity. They assume all packages are worth storing at whatever granularity they are given to the system, because the dependency engine will save you in the end. So you end up with tens of thousands of tiny little rocks that are not organized in any rational fashion. The only model keeping track of how the packages are related to one another is the dependency graph, but at even medium scales (a few hundred dependencies) such structures quickly become impractical for humans to visualize or for computers to present to humans in a meaningful way.

So then I, a poor programmer, am just trying to compile a stupid script that prints 👏 emojis and I end up waiting 15min for the package manager and build system to download a new copy of the compiler and build three dozen random modules in a flurry of dynamic recursive descent ... and then the finally the 👏's appear on the screen.

Or, I just want to install a utility that can resize and sharpen JPEG images, and I end up compiling all of X11R6 from source on my laptop.

Or, a huge number of web tools on the Internet that are driven by Javascript go down because one nerd got pissed off and deleted a package from the main package library that no one even knew they depended on.

This is what I don't like about package managers. They always end up atomizing the development environment in the name of creating the smallest possible units of reusability. And, nerds who are overly enamored of watching flurries of dependency driven recursive descent get a little bit too happy with that particular super power. Rather than doing the work to capture and freeze their dependency lists, they think the magic engine will just build everything they need right when they need it and they are surprised when their world falls over because some computer they never heard of deleted a package that lived on the very end of the dependency paths that ended up being deeper than they ever imagined. 

At this point you could, fairly I think, accuse me of being unfair to the *tools* when really it's the people using the tools who are at fault. This might be true, I don't know. In an ideal world we would fix both sides of the equation. Sadly it's not really clear what you do about this. The most obvious solution, which is also untenable, is to just give everyone a copy of everything. Google does this with their internal source code which I have heard is stored in a single source control repository that takes a data center the size of the galaxy to host. But even there people hardly ever check out the whole thing at once. You only pull what you need for your project. And presumably you figure out what you need using some kind of package and dependency tool. So we are back where we started.

Overall I think the core idea that I would like to see the world consider is moving to larger self-contained packages rather than thousands or millions of tiny ones. Having package managers that support some notion of a self-contained "statically linked" package would also be cool. Such an object would be a thing you can just install in your system without needing to trace the dependencies explicitly. They would be embedded in the static package and only referenced from there, like a statically linked binary from the old days of computing. This would, of course, mean that you could end up with a proliferation of copies of heavily used packages, but maybe at some threshold of uses you could promote packages from non-base to base status and then rebuild the world to fix that up (famous last words).

More likely this would not work at all, and you would just end up in the same place, but with bigger packages. Fundamentally I think managing large dependency graphs with complicated constraints is a hard problem and it's no surprise that no one has cracked it because it is hard.

I think really doing this right requires a lot more people work than computer work. People need to do the work to collectively figure out which packages are worth keeping, which should be deleted, and how the package repository should be organized in order to make sense to the average programmer who has to use it. Computer nerds don't have a good record with that kind of work. I certainly don't. So, while I hate them I have no suggestions for how to replace them with anything better. 

Sigh.

**Note:** Users of more modern package systems, like, say, the one in `rust`, inform me that they are a lot better. Of course, I was told this by a `rust` enthusiast and they tend to think everything in `rust` is good. On the other hand they have no reason to lie to me.

#### Packages and Projects in Haskell

Most of the angry thoughts that brought this piece about were caused by dealing with package management in Haskell, which has not one, not two, but *three* tools for doing this kind of work. I was thinking this must be a unique sort of suffering to inflict on the poor users of a language, but I'm told other systems have even more, so there you go. 

The first tool is `ghc-pkg` which works at the lowest level and is connected directly to the `ghc` compiler. Packages for `ghc` are essentially just a collection of interfaces, meta-data and binary shared libraries. This is much like a Framework in macOS development. Packages also contain dependency information and such but it's not clear to me how `ghc-pkg` uses this data.

The second tool is `cabal`, which is a library that implements a higher level package abstraction and also a build tool. Historically `cabal` has been the main tool for managing builds of larger pieces of Haskell code. It knows how to trace dependencies, download the required packages from a central repository, build it locally on your machine, and set things up so `ghc` can find it. I guess until recently what `cabal` did not do well is manage a world where packages can get updated in ways that break things for code that depends on them. In particular dealing with multiple projects that have different version dependencies was hard. The state of the package world was shared among all the builds rather than allowing different project builds to be isolated from one another. This eventually led to the development of the third tool.

The third tool is `stack`, which uses the library part of `cabal` to implement a build engine that implements a model where the builds for every project you work on are logically isolated from one another. An important side effect of this isolation is that all your separate builds will work even if they have dependencies on different versions of the same packages (say). Later on `cabal` was rebuilt to also provide this kind of functionality, so now on the surface at least new `cabal` and `stack` seem very similar.

This also means that we really have *four* tools: `ghc-pkg` which mortals should not use, old `cabal` which I guess is slowly being phased out, new `cabal` which is new and better, and `stack` which is pretty much the same as new `cabal` but different.

What `stack` and new `cabal` do for you is a mashup of what traditional build tools and traditional package managers do.

1. You can make your own projects which build one or more packages and have dependencies on one or more other packages at various versions.

1. Each project has its own logically separate build sandbox where the built code for the project and the built code for the dependencies live, and this environment stays consistent until you change the meta-data related to the project. This is essentially the "statically built" sandbox idea that I proposed above. You thought I really expected you to believe that I made that up didn't you? Hah.

1. Each tool has its own model for how it determines what version of a particular package to fetch by default if you didn't specify one.

1. Finally, each tool also lets you install things that effect some parts of the global Haskell environment.  `cabal` can touch more things than `stack`, and should be used with caution in this mode.

Generally speaking using these tools to build systems that were setup to be built by these systems is pretty straightforward. Creating and maintaining the various bits of meta-data is a bit tedious but not too bad. As long as you are inside a `cabal` or `stack` project everything works pretty well. You just do all your builds and testing using the appropriate tool as a prefix on the command line and the tool sandboxes everything as you would expect.

Things get more confusing if you want to build standalone code using stuff you have installed into `stack` or `cabal` but have not explicitly informed the system `ghc` about. `stack` is a bit easier to deal with for these cases because it has a default global environment for you to use as a sandbox for this purpose. If you run, for example, `stack ghc` instead of just plain `ghc` you will then be inside your global `stack` environment, and all the modules you might have installed for other purposes will be available. This is handy. 

I don't know if there is a similarly convenient mechanism to do this in `cabal`. You can register `cabal` installed packages with the system `ghc` so they are globally available. But this happens with a back door mechanism that that writes some magic state somewhere where you will forget about it. So that's no good. I assume there is a different and more pure way to do this and I have not found it yet.
 
Overall what is a bit ironic about both of these tools is how much state you have to keep around in your head to model what the tools will do for you when you use them. It is also annoying that neither tool has an explicit way to *delete* packages that they have built. You can clean projects but it's not clear to me how to remove things from the global environment without just deleting everything and then rebuilding.

I also made the mistake of trying to learn how to use both tools at once, which I would not recommend. I think that after all my noodling I would recommend that new users just start with `stack` because it's a little bit less confusing (in particular there is only one command set rather than two) and then decide whether to also learn how to use `cabal` for those times when it is required or more convenient.

I would also love for there to be a tool that is not a text editor extension for dealing with the various mechanical aspects of setting up a new blank project and automatically managing the dependencies required to build it as the code in the project evolves. For extra browny points, a generic tool that takes a pile of code that for whatever reason is not already wrapped in a `stack` or `cabal` setup and creates one that works automatically would be a great thing.

#### Haskell Yak Shaving Status

Let me end this on a positive note. 

After fighting through the toolchain wall for a while, I did finally get all the pieces together to be able to download, browse and build the code for <a href="https://pandoc.org">pandoc</a> and <a href="https://jaspervdj.be/hakyll/">Hakyll</a>.

I was pretty surprised how well the `vs.code` and `emacs` haskell extensions navigate a relatively large code base. Jumping around to types and functions was pretty easy and always fast. I'm used to working in a giant `xcode` environment where this barely works at all. Even something as primitive as a `TAGS` file in `emacs` worked pretty well.

After all this dickering around I think I know how to make a Hakyll web site that uses markdown for text and $\KaTeX$ for math. Now I just have to wait five more years to generate the motivation to port all my old articles with the right links and meta-data, and also somehow clone the CSS. The CSS will, of course, kill me.

#### Post Posting Note

After posting this I realized that I had not mentioned that the word `nix` shows up when discussing Haskell packages sometimes and I had decided to not think about what it is. Which is good because <a href="https://nixos.org/manual/nix/stable/#chap-introduction">oh my god, oh no</a>.
