# Getting Started

There are two ways to get started with a Rails application.  You can generate
a brand new application from scratch, or you can start with code that someone
else has written.

## Generating a New Rails Application

We use the `rails new` command to generate a new application:

```
~/code$ rails new myapp
```

Always start in the `~/code` folder when you run this command, and of course you'll usually want something different than `myapp` but that's what we'll use for now.

A new subfolder named `myapp` (or whatever you chose) will be created, and inside of that subfolder will be the skeleton of a brand new web application.  

To begin, change your current directory to the new subfolder:

> Always change your current directory after `rails new`.

```
~/code$ cd myapp
~/code/myapp$
```

You can now start editing the code by simply opening the `~/code/myapp` folder in
the Cloud9 editor.

Finally, let's "run" the website by starting the "server":

```
~/code/myapp$ rails server
```

Then, click `Preview` in your Cloud9 toolbar.  The small pane that opens
will be too small, so click the `Browser` popout button to open a full-size
browser tab.  You should now see a "Yay!" page.

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

Now we start the application by starting the "server":

```
~/code/myapp$ rails server
```

Then, click `Preview` in your Cloud9 toolbar.  The small pane that opens
will be too small, so click the `Browser` popout button to open a full-size
browser tab.  You should see the home page of the application.

**IMPORTANT**: Press `CTRL-C` when you want to stop the server.  
