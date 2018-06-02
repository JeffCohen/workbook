# Deployment to Heroku

Heroku.com provides an easy way to begin to learn about how to "deploy" a web
application to a URL that's publicly available on the internet.

### Prerequisites

You will need:

* A user account with [Heroku.com](https://www.heroku.com)
* A GitHub repository containing the code you want to deploy

Once your code is in GitHub, you can use Heroku to host a production
database and run a production-quality server environment.

### Concepts

Your Heroku account provides a complete computer that's ready to
do nothing except host your Ruby code and run `rails server` on it.

Remember these important ideas!

* Your code will no longer be running on Cloud9!
* Your code will be working with a completely new database!
* You will have to learn Heroku's equivalent for accessing `rails console`
  and viewing the server log!

### Deployment with Heroku

Start by using your Heroku dashboard to create a Heroku "app":

<p><% image_for 'https://www.evernote.com/l/AAawVmyu6SdAL43AWdfOiELxJ6wK4j95Tg8B/image.png' %></p>

You can try to choose an application name, or leave it blank to have Heroku
generate a random one for you.

Next, go to the Deploy tab and connect your GitHub account.  You will be taken to GitHub.com so that you can `Grant` permissions for Heroku to get your code.

After you grant permissions, you can search for your repository with Heroku's interface
so that you can connect the repository to this Heroku app.

<p><%= image_for 'https://www.evernote.com/l/AAYS69PH4DpGFqnPmravKKeMb99NV2K0MPMB/image.png' %></p>

Once the GitHub repository is associated with your Heroku app, you can
attempt your first deploy:

<p><%= image_for 'https://www.evernote.com/l/AAaPfL4D8jRENYYsSm-HtHSuAAdumM9Av9UB/image.png' %></p>

### Using the Console and Logs

Use the menu at the top-right to get to extra utility functions, such as
running Rails commands and viewing the server logs.

<p><%= image_for 'https://www.evernote.com/l/AAbJjYkkVHxEPKRChGL0PEbEg1Pu0XkaDAwB/image.png' %></p>

Heroku is always updating these utilities so I can't provide exact details on
how they work.  Use your computational thinking skills to discover how to use them.

### Seeding Your Database

Your database won't be automatically seeded, so after your first deploy is
successful, use the Console utlity in Heroku to start a Rails console.

Then, run `rails db:seed`.  You can then exit the console.
