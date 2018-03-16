# BrightSky

This assignment is intended to reinforce the following concepts:

* Consuming JSON data from a third-party service
* Using Ruby for conditional logic

You'll start with a prewritten web application that displays the
weather in Chicago.

Except... it doesn't actually show the current conditions.  The
output has been hardcoded by a lazy developer!

Your job is to use the <a href="http://openweathermap.org/">OpenWeatherMap API</a>
to display up-to-the-minute weather information for any city in the US.

## STEP 1. Get the code

```
~/code$ git clone https://www.github.com/kiei925/bright_sky
~/code$ cd bright_sky
```

Now, open the entire `~/code/bright_sky` folder in Atom.

## STEP 2. Connect to Your GitHub Account

Create a new, private repository on GitHub.com named `bright_sky`.

Now, re-orient the application to point your repository (replace `YOUR-GITHUB-USERNAME` with your GitHub username below):

```
~/code/bright_sky$ git remote set-url origin https://www.github.com/YOUR-GITHUB-USERNAME/bright_sky.git
```

From now on, you can commit and sync as often as you'd like.  Just be sure to make
your final commit and sync before the deadline.

Here's a reminder of how to commit your code (take a snapshot of your code):

```
git add -A
git commit -m "Your commit message goes here"
```

And here's how to sync:

```
git push
```



## STEP 3. Study the code

Start the `rails server`:

```
~/code/bright_sky$ rails server

=> Booting Puma
=> Rails 5.1.4 application starting in development
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.11.2 (ruby 2.4.1-p111), codename: Love Song
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://0.0.0.0:3000
Use Ctrl-C to stop
```

Open your browser to `http://localhost:3000`.  Your first goal is to understand what's already
been accomplished.

Here are some hints:

* There are no database models in this application.  All of our data will come from [OpenWeatherMap](http://openweathermap.org/).
* Observe what's already displayed in the browser.  Try entering a city name into the form.  
* Look at `config/routes.rb` and notice that there is one resource defined called `conditions`.  
  That means we have a URL `/conditions` that will route to `app/views/conditions/index.html.erb`.
* Still looking at `config/routes.rb`, we see that the `root` command is used to designate the home page
  for the application.
* Now peruse the code in `app/views/conditions/index.html.erb`.  Use our typical strategies to understand
  code that was written by someone else:
  * Not sure what a line of is doing?  Try matching it up to the HTML source in the browser.
  * Still not sure what a line of is doing?  Try disabling it (commenting it out).
  * Need to experiment with some Ruby code?  Use the `rails console`.


## STEP 4.  Display Chicago's current weather

Now it's your turn.  Take ownership of the code and modify it.

* Find the `weather_data` variable.  That should contain the current weather conditions.
* Use your Ruby skills to change the HTML, so that the web page uses the appropriate weather data
  instead of the hardcoded weather conditions.


## STEP 5.  Get Your Own API Key

You'll notice a line of code that looks like this:

``` erb
<%% api_key = '4ce6f502d38ddae567bf1702b05e168c' %>
```

That's my API key.  Each person should have their own API key.

* Sign up for your own API key from [OpenWeatherMap](http://openweathermap.org/).  
* Update the code to use your key instead of mine.

## STEP 5. Respond to the user's input

Your goal is to allow someone to enter a city name into the form and have the application
retrieve the weather data for that city, instead of Chicago.

If no city has been entered, you should not display any weather at all.

Hints:

* The `params` hash stores the user's input for your code to use as needed.
* You need to figure out how to retrieve the city name from the `params` hash.
* Watch the server log for clues.
