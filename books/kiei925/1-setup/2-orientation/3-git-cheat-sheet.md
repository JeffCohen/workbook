# Git Cheat Sheet

When working on assignments, you may refer back to this cheat sheet.

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

**Connect with an Existing GitHub Repository**

```
git remote add origin [URL of remote repository goes here]
git push -u origin master
```

**Push to GitHub**

Once you're connected to a repository, you can push your commits to it.

If you've never pushed to the repository before:

```
git push -u origin master
```

Thereafter, you can use the shorthand:

```
git push
```

**Discard My Changes**

> Don't forget the period at the end of the line for `git checkout`

```
git clean -df
git checkout -f .
```

**Get Latest Code from GitHub**

Your working directory must be "clean" first (use `git status` to check).

```
git pull
```
