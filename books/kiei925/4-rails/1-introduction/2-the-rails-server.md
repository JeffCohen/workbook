# The Rails Server

When we develop a web application, we make it available
in our browser by using the _Rails server_.

The server connects your browser to your code.  Incoming
URLs from your browser's address bar trigger specific
web pages inside of your application.

> You need to restart your server anytime you modify
  the `models.yml` file.

## How to Start The Server

On Cloud9, we need to follow a three-step recipe:

1. Use a Terminal window to start the server.

   ```
   ~/code/myapp$ rails server
   ```

2. Click `Preview` in your Cloud9 toolbar.  This will open a small pane
near your Terminal window.

3. This small pane that opens will be too small, so click the `Browser` popout button to open a full-size
browser tab.  You should now see the home page of your application.

## How To Stop The Server: `CTRL-C`

You only need to have the server running while you're testing your
application in the browser.

To stop the server at any time, click inside the Terminal pane
that's running the server and press `CTRL-C`.
