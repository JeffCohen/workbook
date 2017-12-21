# Setup on macOS: First Day

This page will prepare you for the first day of class.

## STEP 0: Update to High Sierra or Sierra

Make sure you have the latest version of macOS.  To check your version, simply
click on the Apple logo in your menu bar and select About.

This screenshot shows High Sierra (10.13) but Sierra (10.12) is fine, too.

<img class="border rounded border-warning img-fluid img-rounded" src="https://www.evernote.com/l/AAbMNUNO4C9NXZjNrgyWiq-xigL3RK9RqpIB/image.png"
     width="500px">

Use the AppStore to update if necessary (be sure to backup your important files first!)

If you are unable to update to Sierra or High Sierra, let me know.

## STEP 1: Install Google Chrome (Optional)

You can get it from https://www.google.com/chrome/. This step is actually optional,
but I'll be using Chrome in class.  If you decide to use Edge, Firefox, or Safari,
just know that some things might look slightly different.  


## STEP 2: GitHub Account (5 minutes)

1. Use your NU email address for a free Student Pack at [GitHub.com](https://education.github.com/pack).  Use it to sign up
for a free GitHub account.  They will probably require
you to confirm your .edu email address, which might take minutes but sometimes
takes a day or two.  Watch your inbox for a confirmation email.

2. Once you have signed in, go to your [Settings](https://github.com/settings/profile) and select your NU email
address to be your **Public email** address, _then scroll down and click
the **Update profile** button_.

<p><a href="https://www.evernote.com/l/AAZiKCcCKHRD9bIGWzdNhltwnvnR85lRyV8B/image.png">
<img width="400px" src="https://www.evernote.com/l/AAZiKCcCKHRD9bIGWzdNhltwnvnR85lRyV8B/image.png">
</a></p>


While you're waiting for your educational discount to be confirmed,
you can continue with the remaining steps.

## STEP 3: Install a Text Editor (5 minutes)

Install Atom from [atom.io](https://atom.io).  Once installed, it should automatically
launch.  

You can uncheck the "Always Show This Welcome Page" option and close
all of the tabs.

Turn on the Autosave feature:

1. Go to the `File` menu and click `Settings`.  A big two-panel control
   panel will show up.
2. Click on `Core` on the left side, then uncheck `Audio Beep`.
3. Click on `Packages` on the left side, and search for `Autosave`.
   You should now see the "autosave" package listed under "Core Packages."
4. Click the small `Settings` button in the package widget.
5. Check the box that says `Enabled`

## STEP 4: Install Homebrew (5 minutes)

Finally, we will install a tool called [Homebrew](https://brew.sh/) which will let us... install even more things.  Here's a video overview (less than 4 minutes):

<%= video_for 'AFQVdOJasNo' %>

And now for the formal instructions:

1. Start by opening the `Terminal` application.

2. Then paste in this entire line of code, which will download a remote
   script and execute it.  The script explains what it will do and then
   pauses before it does it.  When asked to provide your computer
   password, it won't be shown as you type, but don't worry - just
   type your password and press [Enter].

   ```
   /usr/bin/ruby -e "$(curl -fsSL  https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```
 3. After about 10 minutes, you should see a notice that it was installed
    successfully. You can close the Terminal app at that point.

That's it!  You're ready for class.
