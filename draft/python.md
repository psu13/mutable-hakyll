so when playing around with those bib tools this morning i used brew to install a tool called "pipx" into my system that can install random command line python things in their own venv so installing new python things can't fuck them up.

ironically, installing this tool, i think, installed a second python into my homebrew ... because suddenly i had python3.9 (which was the last thing I set up to run the one tool that i use python for ... a tool that crops PDF files) _and_ python3.11.something.

i found this very confusing, esp. because now when i ran "pip" i didn't know which python i was getting, except that it appeared that "pip" was the old one because the pdf tool was there, but "pip3" was now the new one, and the pdf tool was not there.

so i am pondering what to do about this, and i find out that the pdf tool that i use (pdfCropMargins) is up to version 2, and is somewhat easier to install now. but surely since they changed things shit will break. I wonder what I to do.

finally i decide to try and make a venv install of the tool with pipx ... the install works, but the tool does not launch. i mess around and can't work out why. i assume that the venv is the problem.

now i ponder whether i should possibly fuck myself by installing 2.0.x of the tool in the new python

throwing caution to the wind, i toss in 2.0.x and it fails to launch exactly the same way. but i figure out why (!) and get it to work. the new GUI comes up and I think all is well.

but, now whenever you use the macOS menus in the python gui shell the shell dumps core. great.

NOW i try to roll it back, but i can't get back to a state where running `pdf-crop-margins` from the command line runs the right thing, because uninstalling it from new python deletes the script ... and installing it from old python will install the new broken version.

I try to do a few installs version locked, but eventually the fact that two different pythons are fighting each other makes it all intractable.

next i try to copy the backup of the /opt/homebrew dir that i made last week. and that _seems_ ok it's clearly not meant to work that way and various meta-state appears to be dorked even if the binaries run correctly.

so i do the the only rational thing.

delete homebrew and install the whole tool again, version locked at 1.0.11 which is new enough to have dependencies that still build and old enough to not yet be broken.

in summary: fuck python. fuck homebrew. fuck package managers. and fuck pdfs for needing to be cropped to be readable on the iPad.

but at least this is still the ONE thing i do with this tool ... so setting up from scratch still only takes 10min.