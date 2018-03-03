# Many-to-Many Associations

Let's consider a more complicated scenario: the connection
between users and photos.

A user can post many photos.  But a photo can also be connected
to many users.

Putting a single foreign key in one of those tables won't suffice.
Instead, we must first ponder the real-world word we use to
describe the connection between a photo and a user.

How about _appearance_?

## Users

|id|name|location|
|--|----|--------|
|45|Cookie Monster|New York|
|46|Kermit The Frog|Los Angeles|
|47|Fozzie Bear|Austin|

## Photos

|id|image_data|
|--|----------|
|802|45A76C98A12...|
|803|91B1EF719B8...|

## Appearances

|id|user_id|photo_id|
|--|-------|--------|
|73|45|802|
|74|46|802|
|75|47|802|
|76|46|803|
