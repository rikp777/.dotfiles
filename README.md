# About GNU STOW
GNU Stow describes itself as a "symlink farm manager", but in practical tems
it's just a program that can mirror the structure of one directory into another
by creating symbolic links back to the original files.

This is extremely useful when you have a directory full of configuration files
that is managed by Git and you want to send all of those configuration files to
where they belong in you home directory. 

# Basic usage 
Let's say we've got our configuration files stored in a directory under the
home directory called .dotfiles. We can easily create symbolic links to the
files in this directory to the equivalent locations in the home directory using
the following command:
```stow .```
Before we run that, let take a look at what's already in the .dotfiles
directory and the home directory:
```ls -al ~```
```ls -al ~/.dotfiles```
now let's run the stow command that mentioned before
```
cd ~/.dotfiles
stow .
ls -al ~
```
we can now see that all of the configurations files under ~/.dotfiles, even
those in child directories, have had symbolic links created!

# How it works
GNU Stow walks the file and directory hiearchy of the directory passes as the
first parameter to the stow command and creates symbolic links to those files
in the equivalent locations in the target directory.

The important thing to be aware of here is that our dotifles directory must
have the same layout as where the files would be placed under the home
directory. this means you will need to have the equivalent subdirectory
structure in you dotfiles folder so that all symbolic links get created in the
right place.

On thing you may have notices: we didn't specify that the target directory is!
By default, stow assumes that the target directory is the parent directory of
the one that you specified. 

this means that stow . is equivalent to:
```
stow --dir=~/.dotfiles --target=~/

#OR

stow -d ~/.dotfiles -t ~/
``` 
This means that you have full control over the source and target directories
that Stow uses!

# Ignoring files and directories 
By default, GNU Stow does a good job of inforing common files and directories
you might not want to be linked back to your home directory like README AND
LICENSE files, source control folders.

Let's say you have other files in your dotfiles folder that you don't want to
have linked to you home directory. For example, our dotfiles folder has a
Notes.org file. That really doesn't need to be in you home folder.

To skip files like this, we can create a file in our dotfiles folder called
.stow-local-ignore. Each line of this file should be a string or regular
expression representing any file or directory you don't want to link to your
home folder.
 
Example 
```
\.git
misc
# License 
^/.*\.org
```
this will avoid linking the .git folder, a folder called misc, the LICENSE
file, and any files ending in .org, the latter being useful for you if you use
Emacs and Org Mode to keep literate configuration files.
