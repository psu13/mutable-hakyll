I'm not sure if this will be helpful or provide any real insight, but I typed it all out so here goes.

Computer architecture is a complicated business, and what hardware works well for which applications can depend on a lot of things besides how well, in theory, a particular micro-architecture fits the particular computational model that you want to implement.

There was a lot of work done in the late 80s and early 90s on architectures, especially parallel architectures, for executing functional programs more efficiently (see "graph reduction"). But none of the ideas really panned out because it turned out that you would get faster code by just translating the functional program into something a more standard CPU understood and then riding the engineering curve.

There are also various universal constraints on CPU performance (memory bandwidth, cacheing, etc) that traditional machines have been painstakingly engineered for decades to deal with, but which novel architectures might not be ... so it's hard to catch up.

There is always room for hope though. The kinds of things that these GPU and "Neural" cores do are a bit more functional in style, and at least deal with higher level objects like vectors and matrices, instead of just a single word at a time. So maybe some clever compiler writer will figure out how to make that leap. Meanwhile we will keep translating the lambda calculus into Turing Machine code because the Turing-like machines are faster.