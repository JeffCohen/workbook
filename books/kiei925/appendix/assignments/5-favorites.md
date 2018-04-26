# Favorites

This assignment is intended to help reinforce the following concepts:

* Web resources
* Domain modeling
* Database queries


## STEP 0. Update Your Cloud9 Tools.

> This update fixes a few typos in the generated HTML files whenever you create new applications with the `rails new` command.

From your Cloud9 dashboard, open your homework IDE.

An update is available for your KIEI-925 tools.


Open any Terminal window and run this command:

```
~/code$ curl -sL https://www.kiei925.com/c9setup | bash -E -
```

Then **close the Terminal window and any others that were already open**.
Then start a new Terminal window and you're ready to go.

## STEP 1. Pick a resource.  

Here are some examples:

* Famous Chicago landmarks or architectural sights
* Your favorite restaurants (e.g. Yelp)
* Your favorite movies (e.g. IMDB)
* Things you have at home that you want to sell (e.g. eBay or Craigslist)

Part of the challenge of this assignment is to help you extrapolate
from technical examples that do not exactly match your code.  
Therefore, we will use the example of _CTA Train Stations_,
but **you should substitute your resource instead.**


## STEP 2. Create a New Rails Application

```
~/code$ rails new favorites
~/code$ cd favorites
~/code/favorites$
```

(If you run any strange error messages at this point, let me know via Slack or Canvas.)


## STEP 3. Create a model for your resource

<div class="alert alert-primary" role="alert">
<b>NOTE:</b> For example purposes, we will be keeping track of CTA stations.  
You should use your own resource instead.
</div>

1. In your `db/models.yml` file, insert code at the top to describe your model attributes. Be careful to indent perfectly!  


   ```
   Station
     name: text
     photo_url: text
     address: text

   ```

   Note the following important things:

   * The name of the model is `Station`.
   * You should have at least two attributes but more than five will get tedious.
   * The name of the model starts with an uppercase letter.
   * If you need two words for your resource, such as _vital statistic_,
     combine the words but capitalize the start of each word: `VitalStatistic`.
   * The attributes are indented 2 spaces (4 is fine, but you must be consistent)
   * Each attribute has a _data type_ associated with it.  
   * Available data types are `text`, `integer`, `datetime`, `float` and `boolean`.




## STEP 3. Open the `rails console`

From your command prompt:

```
~/code/favorites$ rails console
```

Starting this console will force Rails to update your database structure based
on the `models.yml` file.  (Starting the `rails server` will also do this.)

```
Defining new table for model 'Station'.
Creating new model file: app/models/station.rb

Rails Console
--------------------------------------------------
* Type 'exit' (or press CTRL-D) when you're done.
* Press Ctrl-C if things seem to get stuck.
* Use the up/down arrows to repeat commands.

Models: Station

Use this console to create, read, update, and delete rows from the database.
Or simply type the name of a model to see what columns it has.

Loading development environment (Rails 5.1.4)
irb(main):001:0>
```

## STEP 4. Create a few rows of data.

Try the following Ruby expressions in the console (of course,
  replace `Station` with your model name instead):

Let's find out how many rows of data we have so far:

``` ruby
Station.count
```

This should return `0` since we haven't created any stations yet.

If we ask to see all of the rows, we get back an empty array:

```
Station Load (0.3ms)  SELECT "stations".* FROM "stations"
[]
```

Let's create our first row:

``` ruby
Station.create name: "Grand Ave", address: "521 N. State St., Chicago, IL 60610", photo_url: 'http://www.transitchicago.com/assets/1/wayfinding/pageheader_grandmezz.jpg'
```

Notice how we use the syntax `column: value` and separate each pair with commas.

<div class="alert alert-danger" role="alert">
Don't worry if you make a mistake, you can always delete an errant row. We'll see how to do this a little later.
</div>

If all went well, the console will show you the new row it created:

``` ruby
(0.1ms)  begin transaction
SQL (0.6ms)  INSERT INTO "stations" ("name", "photo_url", "address", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Grand Ave"], ["photo_url", "http://www.transitchicago.com/assets/1/wayfinding/pageheader_grandmezz.jpg"], ["address", "521 N. State St., Chicago, IL 60610"], ["created_at", "2018-02-01 18:33:53.319311"], ["updated_at", "2018-02-01 18:33:53.319311"]]
 (1.4ms)  commit transaction
#<Station:0x007fb19b9d7660> {
          :id => 1,
        :name => "Grand Ave",
   :photo_url => "http://www.transitchicago.com/assets/1/wayfinding/pageheader_grandmezz.jpg",
     :address => "521 N. State St., Chicago, IL 60610",
  :created_at => Thu, 01 Feb 2018 12:33:53 CST -06:00,
  :updated_at => Thu, 01 Feb 2018 12:33:53 CST -06:00
}
```

Let's get a list of all the stations so far:

```
irb(main):0> Station.all

Station Load (0.4ms)  SELECT "stations".* FROM "stations"
+----+-----------+-----------------------+-----------------------+-----------------------+------------------------+
| id | name      | photo_url             | address               | created_at            | updated_at             |
+----+-----------+-----------------------+-----------------------+-----------------------+------------------------+
| 1  | Grand Ave | http://www.transit... | 521 N. State St., ... | 2018-02-01 12:38:2... | 2018-02-01 12:38:28... |
+----+-----------+-----------------------+-----------------------+-----------------------+------------------------+
1 row in set
```

Create a few more rows. Use `Station.all` to check your progress.

If the console prompt ever doesn't seem to respond, try pressing `CTRL-C`.

## STEP 5. Delete a row (optional)

If you made a mistake creating a row and want to delete it, you can!

Use `Station.all` to determine the `id` of the row you want to delete.  Suppose we want to delete the row that has an `id` value of 3.

``` ruby
Station.delete(3)
```

Use `Station.all` to check again.  The row should be gone.


## STEP 6. Start the Server

Open a new Terminal window. Start the `rails server`:

```
~/code/favorites$ rails server

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

Now use `Preview > Preview Running Application` and the use the "pop out"
button to view your website in a full-size tab in your browser.

## STEP 7.  Add a Route and a View

The URL for your resource is the _plural_ of your model name, and all lowercase.  For this example, the url will be `/stations`.

Going to `http://.../stations` You should see an error page with the title `Routing Error`.

Modify `config/routes/rb` like this:

``` ruby
Rails.application.routes.draw do

  get '/stations' => 'stations#index'

end
```

Now create a file named `app/views/stations/index.html.erb` that contains
the following HTML:

``` html
<h1>Stations</h1>
```

Refresh your `/stations` page and you should see your web page appear.  If not,
read the error message and check your server log to help figure out what
went wrong.


## STEP 8. Modify the code to display your list

Assuming you have some rows of data in your database, let's
make them appear on the web page.

Use a `for` loop to generate a simple list; for example:

``` erb
<h1>Stations</h1>

<ul>
<%% for station in Station.all %>
  <li>
    <%%= station.name %>
  </li>
<%% end %>
</ul>
```

You can also use a `<table>` or any HTML representation you feel is best.

> Watch out for when to use `<%%` vs. `<%%=`!

TIP: If you need to display images, use an `<img>` element:

``` erb
<%% for station in Station.all %>
  <li>
    <img src="<%%= station.photo_url %>">
  </li>
<%% end %>
</ul>
```

## STEP 8. Modify the code to link to a details page.

Change the code inside the loop to generate a link to each item instead
of plain text.  Use the item's `id` to generate unique links for each item.

```
<li>
  <a href="/stations/<%%= station.id %>">
    <%%= station.name %>
  </a>
</li>

```

Refresh your browser and verify that you see proper HTML hyperlinks.

Clicking a link should result in another `Routing Error` page.

Add another route:

``` ruby
Rails.application.routes.draw do

  get '/stations' => 'stations#index'
  get '/stations/:id' => 'stations#show'

end
```

and and another file: `app/views/stations/show.html.erb`

``` html
<h1>Station Details</h1>
```

* Verify that your links now work.
* Watch the server log when you click on a link from the `index` page to
  the `show` page.  Notice the `Parameters: { }` line.

## STEP 9: Make the `show` page intelligent

Modify the `show.html.erb` file. Use the `params` hash to retrieve the
`id` of the item that should be displayed:

``` erb
<h1>Stations Details</h1>

<%% id_from_url = params["id"] %>
<%% station = Station.find_by(id: id_from_url) %>

<%%= station.inspect %>
```

That last line  `<%%= station.inspect %>` is a quick trick to see a
Ruby variable on a web page without having to worry about
a lot of HTML markup.  It's a great way to "sanity check" that your
variables have the right data.

Now, **be sure to replace** the `<%%= station.inspect %>` line with a full section
of real HTML markup.  

By the end of this step, you should have a nice page showing
the details of any resource.  (It should be more than a simple `<ul>` list).

## STEP 10: Let the user delete items

Go back to `index.html.erb` and append a link to each item that will trigger
an action to delete the item (you are welcome to use nicer HTML than this):

``` erb
<li>
  <a href="/stations/<%%= station.id %>">
    <%%= station.name %>
  </a>
  <a href="/stations/<%%= stations.id %>/delete">Delete</a>
</li>
```

Clicking the new link will result in a `Routing Error`.

Add a route:

``` ruby
Rails.application.routes.draw do

  get '/stations' => 'stations#index'
  get '/stations/:id' => 'stations#show'
  get '/stations/:id/delete' => 'stations#destroy'

end
```

Instead of showing an HTML page for the `destroy` action, let's
write a Ruby function that performs the deletion and redirects
the browser back to the `/stations` list.

Modify `app/controllers/stations_controller.rb`:

``` ruby
class StationsController < ApplicationController

  # some parts of this file are not shown for brevity

  def destroy
    id_from_url = params["id"]
    Station.delete(id_from_url)
    redirect_to "/stations"
  end
end
```

Verify that your link will now delete that item and redisplay the list.

Use the `rails console` to add more if necessary!


## STEP 11: Let the user add items

For this step, you'll need to figure it out yourself or with a classmate.

Here's one possible game plan:

* Display a form that the user can fill out to create a new station.
  This form could be somewhere on the `index` page, or you could
  dedicate a specific page to it, say `/stations/new`.
* Submitting the form should trigger the `create` function in the
  controller, then redirect the browser to the `/stations` list.



## STEP 12: Celebrate!

You're done!  Go outside and see people.


## Grading Rubric

* 2 points: Ability to see all items (`index`)
* 3 points: Ability to see the details of a specific item (`show`)
* 5 points: Ability to delete an existing item (`delete`)
* 10 points: Ability to create new items (`create`)
