# BrightSky

This assignment is intended to reinforce the following concepts:

* Consuming JSON data from a third-party service
* Using Ruby for conditional logic
* Retrieve data from Ruby hashes

You'll start with a prewritten Ruby script that displays the
weather in Chicago.

Except... it doesn't actually show the current conditions.  The
output has been hardcoded by a lazy developer!

Your job is to use the <a href="http://openweathermap.org/">OpenWeatherMap API</a>
to display up-to-the-minute weather information for any city in the US.

## STEP 1. Get the code

Be sure to make sure the current directory matches what you see here
before typing any commands!

```
~/code$ git clone https://www.github.com/kiei925/bright_sky
~/code$ cd bright_sky
~/code/bright_sky$
```


## STEP 2. Connect to Your GitHub Repository

Create a new repository on GitHub.com named `bright_sky`.

We will now point your `~/code/bright_sky` directory to your new repository (replace `YOUR-GITHUB-USERNAME` with your GitHub username below):

```
~/code/bright_sky$ git remote set-url origin https://www.github.com/YOUR-GITHUB-USERNAME/bright_sky.git
```

From now on, you can [commit and sync](1-setup/2-cloud9-orientation/3-git-cheat-sheet)
as often as you'd like!  Just be sure to make your final commit and sync before the deadline.

Here's a quick reminder of how to commit your code (take a snapshot of your code):

```
~/code/bright_sky$ git add -A
~/code/bright_sky$ git commit -m "Your commit message goes here"
```

And here's how to sync:

```
~/code/bright_sky$ git push
```


## STEP 3. Study the code

Run the script:

```
~/code/bright_sky$ ruby weather.rb
It is 0 degrees outside.
```

Next, read the source code and see if you can explain to yourself how the script works.

Typical strategies that professional developers use when trying to understand
code that was written by someone else:

  * Not sure what a line of is doing?  Try disabling it (commenting it out) to see what happens.
  * Not sure if a variable has the right value?  Use the `print` function to see
    the contents of your variables.
  * Need to experiment with some Ruby?  Use the `irb` command to start an independent
    Ruby interpreter.  You can then try to reproduce your code, one line at a time,
    to see the results.


## STEP 4.  Display Chicago's current weather

Now it's your turn.  

* Take ownership of the code. Modify it so that it displays
the correct outdoor temperature.  
* You are free to change the code that's there and
and new code.  
* Make sure the output sentence stays the same. Only the `0` should change
to reflect the current temperature.
* Commit and push your code to GitHub before the deadline.

## STEP 5. Add Me As A Collaborator

1. Go to your `bright_sky` repository on GitHub.com
2. Click `Settings`
3. Select `Collaborators and teams` (you may be asked to enter your GitHub password again).
4. Under Collaborators, search for me by username: `jeffcohen` and click `Add Collaborator`.
