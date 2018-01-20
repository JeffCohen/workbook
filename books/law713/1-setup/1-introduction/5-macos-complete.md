# Setup on macOS: Complete

Be sure to do the the [First Day Setup](/1-setup/1-introduction/2-first-day:-macos) before proceeding.

This entire process will take about 30 minutes.  

Watch this video first so you know what to expect.

<%= video_for 'TtRMQdbCxos', width: 640 %>

## STEP 1: Install the Ruby on Rails Environment

1. Start by opening the `Terminal` application.
2. Paste the following entire line into your command prompt and press [Enter]:

   `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

   (Make sure you copy the whole thing, including that quotes at the end!)

3. Paste the following line into your command prompt and press [Enter]:

   `curl -sL https://www.nulaw713.com/macsetup | bash -E -`

   (Make sure you copy the whole thing, including that hyphen at the end!)

4. After about 25 minutes, if all goes well, you'll be back the command prompt `$`.

If you think something went wrong, contact me and send me
your `~/install-log.txt` file.

## STEP 2: Configure Version Control

Now we can setup your Git version control system.

Run these commands from your command prompt, but of course substitute your name and your NU email address below.

   ```
   git config --global color.ui true
   git config --global user.name "YOUR NAME"
   git config --global user.email "YOUR-EMAIL@nlaw.northwestern.edu"
   ```


## STEP 3: Verify Your Environment

1. Create a new Rails web application by entering this line and pressing [Enter]:

   `rails new sample`

2. `cd sample`   
3. `rails server`
4. Open your browser and go to this address (I know it looks funny): `http://localhost:3000`

   If you see the "Yay!" page, congratulations!  You're all set.  

5. Go back to your command prompt window and press `CTRL-C` to stop the server.
