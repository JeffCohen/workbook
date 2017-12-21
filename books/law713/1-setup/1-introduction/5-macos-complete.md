# Setup on macOS: Complete

Be sure to do the the [First Day Setup](/1-setup/1-introduction/2-first-day:-macos) before proceeding.

This entire process will take about 30 minutes.  

## STEP 1: Install the Ruby on Rails Environment

Start by opening the `Terminal` application.

Copy and paste each line below as shown, pressing [Enter] after each one.

1. We will install a tool called **rbenv**:

   ```
   brew install rbenv ruby-build
   ```

2. Now we will install the Ruby programming language interpreter.
   Copy and paste each line below, one at a time, pressing [Enter] after each one:

   ```
   echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi'  >>~/.bash_profile
   source ~/.bash_profile
   rbenv install 2.4.2
   rbenv global 2.4.2
   ruby -v
   ```

   At this point you should see some output starting with **ruby 2.4.2....** or something similar.  If not, ask for help, because the next step won't work.

5. Assuming everything is good so far, we can install Rails.  Enter your computer password if prompted.

   ```
   echo "export GEM_HOME=$HOME/.gem/ruby/2.4.0" >> ~/.bashrc
   echo "export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH" >> ~/.bashrc
   echo "gem: --no-document" >> ~/.gemrc
   source ~/.bashrc
   sudo gem update --system
   gem install bundler
   gem install rails
   ```

## STEP 2: Configure Version Control

Let's setup your Git version control system.

Run these commands from your command prompt, but of course substitute your name and your NU email address below.

   ```
   git config --global color.ui true
   git config --global user.name "YOUR NAME"
   git config --global user.email "YOUR-EMAIL@nlaw.northwestern.edu"
   ```


## STEP 3: Verification

1. Create a directory named **code** in your Home folder:

   > That ~ symbol is the _tilde_, which is in the upper-left of your Mac keyboard.

   ```
   cd ~
   mkdir code
   echo "cd ~/code" >> ~/.bash_profile
   ```

2. Finally, let's generate a sample Rails application:

   ```
   cd ~/code
   rails new sample
   ```
   After a minute, you should see a green message that everything was successful.  Then:

   ```
   cd sample
   rails server
   ```

   The moment of truth: open your Chrome browser and go to [http://localhost:3000](http://localhost:3000).

   If you see a web page that says "Yay! " then you are all done!

   Come back to the command prompt and press `CTRL-C` to stop the webserver.
