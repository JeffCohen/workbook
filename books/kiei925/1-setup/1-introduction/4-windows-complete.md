# Setup on Windows: Complete

Be sure to do the the [First Day Setup](/1-setup/1-introduction/2-first-day:-windows) before proceeding.

This entire process will take about 30 minutes.  


## STEP 1: Install the Ruby on Rails Development Environment

Watch this video first so you know what to expect.

<%= video_for 'uCZwYzokW0E', width: 640 %>


Now that you've watched the video, here are the exact instructions.  

1. Start the command prompt with the `bash` command.

2. Paste the following line into your command prompt and press [Enter]:

   `curl -sL https://www.nulaw713.com/win10setup | bash -E -`

   (Make sure you copy the whole thing, including that hyphen at the end!)

   You will be asked for your Linux password a couple of times.

   Don't worry that you can't see your password as you type - that's
   intentional.  Just type your password anyway and press [Enter].

3. After about 20 minutes, if all goes well, you'll be back the command prompt `$`.

If you think something went wrong, contact me and send me
your `~/install-log.txt` file.


## STEP 2: Configure Version Control

<%= video_for 'uXWFUCXoHZc' %>

1. Close your command prompt window, and then open a new `bash` window,
   so that all of the new settings will take effect.

   You should now be at a prompt that looks like this:

   `~/code$ `

   (If not, something went wrong.  Contact me and send me your `install-log.txt`
   file.)

2. Substitute your name and email address below to match your GitHub settings.

   ```
   git config --global color.ui true
   git config --global user.name "YOUR NAME"
   git config --global user.email "YOUR-EMAIL@nlaw.northwestern.edu"
   ```

## STEP 3: Verify Your Environment

<%= video_for 'ZW4DUK81kCI' %>

3. Create a new Rails web application by entering this line and pressing [Enter]:

   `rails new sample`

   _You will probably see some warning messages fly by, but these are
   harmless._


4. `cd sample`   
5. `rails server`
6. Open your browser and go to this address (I know it looks funny): `http://localhost:3000`

   If you see the "Yay!" page, congratulations!  You're all set.  

7. Go back to your command prompt window and press `CTRL-C` to stop the server.
