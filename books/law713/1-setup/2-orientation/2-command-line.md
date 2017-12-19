# The Command Line

Sometimes, we use the command line (or "command prompt") to send instructions
to the computer instead of using a visual application.

To open the command line:

* macOS: open the `Terminal` application
* Windows: run the `bash` command

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

Now you want to change to a subdirectory, `~/code/sandbox`:

> TIP: Use your up and down arrow keys
to recall previous commands.

```
cd sandbox
```

Now you want to go back to the parent directory, `~/code`:

```
cd ..
```


Two dots `..` means "go up to the parent directory"


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

```
exit
```

or press `CTRL-D`.


## Git commands

**Start a New Repository**

```
git init
```

**Check File Status**

```
git status
```

**Commit All Current Changes**

```
git add -A
git commit -m "Your commit message goes here"
```

**Connect with a Remote Repository**

```
git remote add origin [URL of remote repository goes here]
git push -u origin master
```

**Push to GitHub**

```
git push
```
