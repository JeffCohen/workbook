# The Terminal

Sometimes, we use the command line (or "command prompt") to send instructions
to the computer instead of using a visual application.

In Cloud9, we use the `Terminal` windows for this.  You can open as many
Terminal windows as you want simultaneously.  

<p>
<img width="400px" src= 'https://www.evernote.com/l/AAa59SMvftBKiIM40E_SLFpqC_ru2YhvySEB/image.png'>
<img width="400px" src= 'https://www.evernote.com/l/AAZ25ef61LpCPr5bg9nGQpzMAtwHjlxz2O8B/image.png'>

</p>


## What is the Current Directory?

```
pwd
```

## How do I Change the Current Directory?

If you want change the current directory to `~/code`:

```
cd ~/code
```

## How do I Create a New Directory?

You can make a new child directory of your current directory with
the `mkdir [dirname]` command.  Suppose you want to create a new
subdirectory called `sandbox`:

```
~/code$ mkdir sandbox
```

If you want to go into that new subdirectory, e.g. `~/code/sandbox`:

> TIP: Use your up and down arrow keys
to recall previous commands.

```
~/code$ cd sandbox
~/code/sandbox$
```

Now if you want to go back to the parent directory:

```
~/code/sandbox$ cd ..
~/code$
```


Two dots `..` means "go up one directory level."


## Directory Listing

```
ll
```

or

```
ls
```


or

```
ls -l
```

## Copy a file

You have a file named `index.html` and you want to make a copy called
`index2.html`:

```
cp index.html index2.html
```


## Rename a file

You have a file named `fruits.html` and you want to rename it to `cookies.html`:

```
mv fruits.html cookies.html
```

`mv` is short for "move" because renaming can also include the more general
case of moving a file somewhere else, perhaps renaming it also:

```
mv fruits.html ~/code/cookies.html
```

## Exit

This is one way to close the current Terminal window:

```
exit
```
