# One-to-Many Associations

We connect models by using _foreign key columns_.  Here's
how a post might be associated with its comments:

## POSTS

|id|user_id|content|
|--|-------|-------|
|97|1201|Today I had the best ice cream! ...|
|98|672|Anybody else going to the Cubs game?|

## COMMENTS

|id|post_id|user_id|content|
|--|-------|-------|-------|
|301|97|812|Strawberry is the best flavor IMO|
|303|98|2305|Wish I could go with you|
|304|98|1208|Yup I'll be right behind home plate|
|302|97|498|No way, mint chocolate chip LOL|
