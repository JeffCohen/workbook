# BrightSky

This assignment is intended to:

* Encourage experimentation and code discovery
* Help you learn the essentials from the [Ruby unit](/3-ruby)

You'll start with two prewritten Ruby scripts. One displays the current outdoor
temperature, while the other shows live Divvy bike station data near campus.

Except... the output for both has been
hardcoded by a lazy developer! Your job is to modify the code so that the scripts
will retrieve live weather and Divvy data.  

The good news is, you don't have to know anything about how
the APIs work. Instead, you will use Ruby debugging and exploration skills to:

* discover the data structures that contain live data
* use Ruby hashes to retrieve the necessary data


## STEP 1. Prepare your `homework` environment.

From your Cloud9 dashboard, open your IDE named `homework` (if you don't know
what I'm talking about, you need to [get setup for class](/1-setup)).

I will need access to your IDE for grading purposes (and to provide help should you request it)
so let's take care of that right now.

Click the Share button in the upper-right corner:

<p><%= image_for 'https://www.evernote.com/l/AAaO30eOMxRKnp-6UtqjDElFqUVoPr6JdgQB/image.png' %></p>

Enter the username `teacher` into the invitation box, then click `Invite`:

<p><%= image_for 'https://www.evernote.com/l/AAYt6b9rhsdPppZ8NJDl4uQ3YAkOuHRpOK4B/image.png' %></p>

You'll get a scary confirmation dialog like this. Click `OK`:

<p><%= image_for 'https://www.evernote.com/l/AAaMGsOSAudLipdS7AtdtF--UftYSZzC98MB/image.png' %></p>

Click `Done` to dismiss the Share dialog.

## STEP 2. Do The Workbook

This is actually the bulk of your homework this week: do the entire [Ruby unit](http://www.kiei925.com/3-ruby).  

Don't just _read it_.  _Do it_.  Follow along and type in the sample code.  That's the
only way you'll actually learn the material.

## STEP 3. Get the code

Go to your Terminal window and enter the following commands.  Always be sure the current
directory matches what you see here before typing anything!

```
~/code$ git clone https://www.github.com/kiei925/bright_sky
~/code$ cd bright_sky
~/code/bright_sky$
```



## STEP 4. Study the code

Run the weather script:

```
~/code/bright_sky$ ruby 1_weather.rb
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

Now run the Divvy script:

```
~/code/bright_sky$ ruby 2_divvy.rb
The nearest station is Buckingham Fountain.
If you need to rent a bike, there are 5 bikes available right now.
If you need to return a bike, there are 3 open docking spaces right now.
```

Again, all of that output has been hardcoded.  Feel free to peruse the source code.


## STEP 5.  Display Chicago's current weather

Now it's your turn.  

* Take ownership of the code. Modify `1_weather.rb` so that it displays
the correct outdoor temperature, and modify `2_divvy.rb` to display information
for the Divvy bike station that's nearest the Global Hub.
* You are free to change the code up to line 17 (you can also insert as many new lines of code
  as you want before that).  
* You may NOT change the code below the comments that say `# Do not touch the code below this line.`.

**OMG MAJOR HINTS:**

* Don't feel like you have to come up with the solution all at once.  Coding is a like doing
  a jigsaw puzzle. You have to work on one piece at a time.
* If you haven't worked through [Arrays](http://localhost:5000/3-ruby/3-lists/3-arrays)
  and [Hashes](http://localhost:5000/3-ruby/3-lists/5-hashes) you should do that now.
* If something feels invisible, like the contents of a variable, make it visible!
  See the chapter on [Ruby Scripts](3-ruby/4-intelligence/1-scripts) for a quick example.
* Use an extra `irb` session in a separate Terminal window to reproduce your
  variables in an isolated context, play with Ruby expressions, and and perform experiments.

## STEP 6.  Turn In Your Work

If you completed Step 2, there is no step 6. :-)  When the deadline has passed, I will
grab a copy of your code for grading.
