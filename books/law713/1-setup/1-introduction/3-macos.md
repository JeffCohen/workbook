# Setup on macOS

## STEP 1: GitHub Account (5 minutes)

1. Head over to [GitHub](https://www.github.com) and sign up for a free account.
2. While you're still signed in, go to your [Settings](https://github.com/settings/profile) and select your NU email
address to be your **Public email** address, _then scroll down and click
the **Update profile** button_.

## STEP 2: Install a Text Editor (5 minutes)

Download Atom from [atom.io](atom.io)

Start it up, go to Preferences

Select the following preferences:

* autosave


## STEP 3: Install software development tools

1. Launch the **Terminal** app.

2. First, we need to install a tool called Homebrew:

   `/usr/bin/ruby -e "$(curl -fsSL <%= course['domain'] %>/macsetup1)"`

   Just follow the on-screen instructions that appear.

   If all goes well, in about 10 minutes, you'll see a notice saying
   "Installation Successful!"

3. Now let's setup the Git version control tool.  Substitute your name
   and your NU email address below.

   ```
   git config --global color.ui true
   git config --global user.name "YOUR NAME"
   git config --global user.email "YOUR@EMAIL.com"
   ```

## STEP 3: Install the Ruby on Rails Environment (45 minutes)


3. We can now install a tool called **rbenv**:

   ```
   brew install rbenv ruby-build
   ```

4. And now we install the Ruby programming language interpreter.
   Just copy and paste each line, one at a time:

   ```
   echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi'  >>~/.bash_profile
   source ~/.bash_profile
   rbenv install 2.4.2
   rbenv global 2.4.2
   ruby -v
   ```

   At this point you should see some output starting with **ruby 2.4.2....** or something similar.  If not, ask for help, because the next step won't work.

5. Assuming everything is good so far, we can install Rails:

   ```
   echo "export GEM_HOME=$HOME/.gem/ruby/2.4.0" >> ~/.bashrc
   echo "export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH" >> ~/.bashrc
   echo "gem: --no-document" >> ~/.gemrc
   source ~/.bashrc
   sudo gem update --system
   gem install bundler
   gem install rails
   ```

## STEP 4: Verification

1. Let's create a directory named **code** in your Home folder:

   ```
   cd ~
   mkdir code
   ```

2. Let's generate a sample Rails application:

   ```
   cd ~/code
   rails new sample
   ```
   After a minute, you should see a green message that everything was successful.  Then:

   ```
   cd ~/code/sample
   rails server
   ```

   The moment of truth: open your Chrome browser and go to [http://localhost:3000](http://localhost:3000).

   If you see a web page that says "Yay! " then you are all done!


   Finally, come back to the command prompt and press CTRL-C to stop the webserver.
