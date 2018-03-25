# The Terminal

Sometimes, we use the command line (or "command prompt") to send instructions
to the computer instead of using a visual application.

In Cloud9, we use the `Terminal` windows for this.  You can open as many
Terminal windows as you want simultaneously.  

Here are some common tasks that you can accomplish at the command line:

## What is the Current Directory?

```
pwd
```

## Change the Current Directory

You want to change the current directory to `~/code`:

```
cd ~/code
```

Suppose you want to change to a subdirectory, `~/code/sandbox`:

> TIP: Use your up and down arrow keys
to recall previous commands.

```
cd sandbox
```

Now if you want to go back to the parent directory (`~/code`):

```
cd ..
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
