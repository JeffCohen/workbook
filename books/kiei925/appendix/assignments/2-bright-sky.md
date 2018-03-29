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

## STEP 1. Open your `homework` environment.

From your Cloud9 dashboard, open the environment.

## STEP 3. Share Your Environment With Me

This way I will have access to your code if you need help, and I'll be able to
retrieve your code at the deadline.

Click the Share button in the upper-right corner:

<p><%= image_for 'https://www.evernote.com/l/AAaO30eOMxRKnp-6UtqjDElFqUVoPr6JdgQB/image.png' %></p>

Enter the username `teacher` into the invitation box, then click `Invite`:

<p><%= image_for 'https://www.evernote.com/l/AAYt6b9rhsdPppZ8NJDl4uQ3YAkOuHRpOK4B/image.png' %></p>

You'll get a confirmation dialog like this. Click `OK`:

<p><%= image_for 'https://www.evernote.com/l/AAaMGsOSAudLipdS7AtdtF--UftYSZzC98MB/image.png' %></p>

Click `Done` to dismiss the Share dialog.

## STEP 2. Get the starter code

Go to you Terminal window and type in the following commands.  Be sure the current
directory matches what you see here before typing anything!

```
~/code$ git clone https://www.github.com/kiei925/bright_sky
~/code$ cd bright_sky
~/code/bright_sky$
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
