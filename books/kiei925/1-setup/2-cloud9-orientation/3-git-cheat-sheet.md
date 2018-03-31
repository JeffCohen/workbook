# Git Cheat Sheet

Here is a quick summary of the most common `git` commands.

## Starting a New Repository

**OPTION 1: Start Your Own Repository**

You already have a folder of your own code.  You decided
you want to activate versioning and the ability to sync
your code with your GitHub account.

Use your Terminal to `cd` to the folder.  Then:

```
git init
```

**OPTION 2: Start From a Remote Repository**

Given a GitHub repository of code, you can _clone_ that
repository to get a local copy:

```
~/code$ git clone https://www.github.com/URL-GOES-HERE
```

## LOCAL COMMITS

**Check File Status**

```
git status
```

**Commit All Current Changes**

```
git add -A
git commit -m "Your commit message goes here"
```

## Sync With GitHub

**OPTION 1: From `git init`**

If you previously did a `git init` and now want to push to
a new GitHub repository that you've created online,
you need to point your local folder to your remote repository:

**Point To A GitHub Repository**

```
git remote add origin [URL of remote repository goes here]
```

**OPTION 2: From `git clone`**

If you cloned a repository and now want to connect to
a different repository (perhaps your own):

**Point To A GitHub Repository**

```
git remote set-url origin [URL of remote repository goes here]
```


## Push Commits to GitHub

Once you're connected to a repository, you can push your commits to it.

If you've never pushed to the repository before:

```
git push -u origin master
```

Thereafter, you can use the shorthand:

```
git push
```

## Discard All Changes Since Last Commit

> Don't forget the period at the end of the line for `git checkout`

```
git clean -df
git checkout -f .
```

## Get The Latest Code from GitHub

Your working directory must be "clean" first (use `git status` to check).

```
git pull
```
