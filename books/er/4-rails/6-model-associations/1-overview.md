# Model Associations

Models are rarely isolated.  Usually, they connect to other models.

Consider Facebook.  What models can we identify?

* Users
* Friends
* Posts
* Comments
* Ads
* Photos
* ...

How are they related?

* A user can be associated with many posts.
* A post can be associated to many comments.
* A user can post many photos.
* A photo can contain many users.
* etc..

We need a way to keep track of these connections in the database.
We do that by adding columns that tie one row from one table
to another row in another table.

Such columns are called _foriegn keys_ because they contain
simple integer values: the values of the primary key columns
of foriegn (other) tables.
