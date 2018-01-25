# Getting Started

There are two ways to get started with a Rails application.  You can generate
a brand new application from scratch, or you can start with code that someone
else has written.

## Generating a New Rails Application

We use the `rails new` command to generate a new application:

```
~/code$ rails new myapp
```

In this example, a new subfolder named `myapp` will be created, and inside
will be the skeleton of a brand new web application.  To start working
with your new application, change your current directory to be the new
subfolder:

```
~/code$ cd myapp
~/code/myapp$
```

You can now start editing the code by simply opening the `~/code/myapp` folder in Atom.

Finally, let's "run" the website by starting the "server":

```
~/code/myapp$ rails server
```

Now you can use `localhost:3000` in your browser to try out your website as you develop.

**IMPORTANT**: Press `CTRL-C` when you want to stop the server.  


## Using an Existing Application

Sometimes you'll be asked to get a copy of an application that's already
been generated, usually from GitHub.  Imagine that we've downloaded the code
for a ride-sharing application named NuLyft and saved it in a folder named
`~/code/nulyft`.  Before we can start working with it, we need to open
our command prompt to that directory, and then run the `bundle install` command:

```
~/code$ cd ~/code/nulyft
~/code/nulyft$ bundle install
```

It may take a couple minutes for the `bundle install` command to do its work.
If all goes well, you'll see the words "Bundle complete!" near the end.
