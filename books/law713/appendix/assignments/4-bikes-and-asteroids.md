# Bikes and Asteroids

This assignment is intended to reinforce the following concepts:

* Web resources
* JSON APIs
* HTML tables


## STEP 1. Create a New Rails Application

```
~/code$ rails new hw2
~/code$ cd hw2
~/code/hw2$
```


**Connect to a Remote GitHub Repository**

Create a private repository on GitHub.com named `hw2`.

Then:

```
~/code/hw2$ git remote add origin https://www.github.com/YOUR-GITHUB-USERNAME/hw2.git
~/code/hw2$ git push -u origin master
```

From now on, you can commit and sync as often as you'd like.  Just be sure to make
your final commit and sync before the deadline.

Here's how to commit (take a snapshot of your code):

```
git add -A
git commit -m "Your commit message goes here"
```

And here's how to sync:

```
git push
```



## STEP 2. List of Divvy Bike Stations

We're going to create a web resource named _stations_.

1. In your `config/routes.rb` file, add a line so that your file looks like this:

   ``` ruby
   Rails.application.routes.draw do

     resources :stations

   end
   ```

2. Add a file named `app/controllers/stations_controller.rb` with this code:

   ``` ruby
   class StationsController < ApplicationController

   end
   ```

3. Add a file named `app/views/controllers/index.html.erb` with this code:

   ``` html
   <%% data = JSON.parse(open("https://feeds.divvybikes.com/stations/stations.json").read) %>

   <h1>Divvy Stations</h1>

   <table class="table table-striped">
     <thead>
       <tr>
         <th>Station Name</th>
         <th>Bikes Available</th>
       </tr>
     </thead>
     <tbody>


     </tbody>
   </table>

4. Inside of the `tbody` element, use the `data` variable to create rows of station data. Each row (`tr`) should have two
columns (`td`).  The first column should contain the station's name, and the second
should have the number of available bikes.

**HINTS**

* Open a `rails console` session and try `data = JSON.parse(open("https://feeds.divvybikes.com/stations/stations.json").read)`.  
* Get practice
at using the `data` variable to retrieve station data.  
* If you feel lost, start with [Ruby Hashes](/3-ruby/2-lists/4-hashes) and the preceding sections as necessary.
* Commit & Sync often as you go, so that your work is safe online in case something happens to your laptop.




## STEP 3. List of Incoming and Potentially Harmful Asteroids

NASA has many APIs available.  We're going to use the "NEO" (Near Earth Object) service that
enumerates incoming asteroids, some of which are potentially hazardous!  Here's a demo
URL you can put into your browser's address bar: https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-12-07&api_key=DEMO_KEY

Your task is the build a web page that lists the next five asteroids that are potentially dangerous.

1. Sign up for an API Key here: https://api.nasa.gov/index.html#apply-for-an-api-key

2. Add a resource named `asteroids` and implement an `index` action for it.

   Add this line into your routes:

   ```
   resources :asteroids
   ```

   Create a controller class:

   ```
   class AsteroidsController < ApplicationController
   end
   ```

   and finally a view file named `app/views/asteroids/index.html.erb`:

   ```
   <h1>Asteroids</h1>

   
