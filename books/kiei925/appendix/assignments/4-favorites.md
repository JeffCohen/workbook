# Favorites

This assignment is intended to reinforce the following concepts:

* Web resources
* Real-world models
* Database tables

## STEP 0. Pick a resource.  

Here are some examples:

* Famous Chicago landmarks or architectural sights
* Your favorite Supreme Court cases
* Your favorite restaurants
* Your favorite books
* Things you have at home that you want to sell

In these directions, we will use the example of _CTA Train Stations_,
but you should substitute your resource instead.


## STEP 1. Create a New Rails Application

```
~/code$ rails new hw2
~/code$ cd hw2
~/code/hw2$
```

Now, open the entire `~/code/hw2` folder in Atom.

**Take an Initial Snapshot**

```
~/code/hw2$ git add -A
~/code/hw2$ git commit -m "First commit"
```
**Connect to a Remote GitHub Repository**

Create a new, private repository on GitHub.com named `hw2`.

Then, replace `YOUR-GITHUB-USERNAME` with you GitHub username in this command:

```
~/code/hw2$ git remote add origin https://www.github.com/YOUR-GITHUB-USERNAME/hw2.git
~/code/hw2$ git push -u origin master
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



## STEP 2. Create a model for your data

<div class="alert alert-primary" role="alert">
<b>NOTE:</b> For example purposes, we will be keeping track of CTA stations.  
You should use your resource instead in your own code!
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
   * The name of the model starts with an uppercase letter.
   * If you need two words for your resource, such as _vital statistic_,
     combine the words but capitalize the start of each word: `VitalStatistic`.
   * The attributes are indented 2 spaces (4 is fine, but you must be consistent!)
   * Each attribute has a _data type_ associated with it.  
   * Available data types are `text`, `integer`, `datetime`, `float` and `boolean`.




## STEP 3. Open the `rails console`

From your command prompt:

```
~/code/hw2$ rails console
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

## STEP 5. Exit the console

```
exit
```

## STEP 6. Start the Server

You should now be back at your command prompt with the `$` sign.  Start
the `rails server`:

```
~/code/hw2$ rails server

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

Open your browser to `http://localhost:3000`.  

## STEP 7.  View your resource

The URL for your resource is the _plural_ of your model name, and all lowercase.  For our example, the url will be `http://localhost:3000/stations`.

You should see a placeholder web page:

<img width="500" src="https://www.evernote.com/l/AAZjd2Q69GNBnphyx5pdZIEMNbt8BK6mG-sB/image.png">

## STEP 8. Modify the code to display your list

Use the instructions in the placeholder to locate the code you need to change.
In our example, the file is at `app/views/stations/index.html.erb`.

Replace the HTML code you see there with this:

``` erb
<h1>Stations</h1>

<%%= Station.all.inspect %>
```

You should see some output similar to what you'd see in the console.

Use a `for` loop to generate a simple list; for example:

``` erb
<ul>
<%% for station in Station.all %>
  <li>
    <%%= station.name %>
  </li>
<%% end %>
</ul>
```

Watch out for when to use `<%%` vs. `<%%=`!

To display images, use an `<img>` element:

``` erb
<%% for station in Station.all %>
  <li>
    <img src="<%%= station.photo_url %>">
  </li>
<%% end %>
</ul>
```
## STEP 9: Commit and Sync

As you work, continually commit and sync your code.  Be sure to sync
your final changes before the deadline.

Happy coding!
