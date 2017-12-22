# Assignment: One Small Step

No actual programming knowledge is needed to successfully complete
this assignment. The goal is to become acquainted with how to create
text files, write code, and publish your work as a  GitHub repository.

Be careful!  *Work slowly.*  There are many steps required,
and each step has multiple sub-steps. If you get stuck, reach out
for help.

## STEP 1. Create a New Folder

> Be on the lookout for error messages!  It's important to learn how
  to recognize successful steps from erroneous ones.

- Open your command prompt (`Terminal` on macOS, `bash` on Windows)
- You should be in your `~/code` folder.  If not: `cd ~/code`
- Create a subfolder for this assignment: `mkdir hw1`
- Start Atom and open the `hw1` folder.  There won't be any files in the folder yet.
- Create a new file named `hello.html`.
- Insert the following text: `<h1>Hello</h1>`
- Save the file.

## STEP 2: Create a Git Repository

- Go back to your command prompt window and enter these commands one at a time:

  ```
  git init
  git add -A
  git commit -m "Completed step 1"
  ```

You now have a _local repository_ so that you can keep a history of all
future changes to the code.

## STEP 3. Create a Remote GitHub Repository

Let's create a remote repository as well, so that you can backup your code
and share it with others.

- Login to GitHub.com
- Click "New Repository"
- Fill in the form with these details:
  - Repository Name: `hw1`
  - Leave everything else as-is
- Click the green Create Repository button.
- You should now be staring at some extra GitHub instructions,
  but you don't need to do any of that just yet.  Just keep the page open.

## STEP 4: Connect Your Local Repository to the Remote Repository

- Go back at your command prompt and enter these two commands.
  B sure to substitute your GitHub username below:

  ```
  git remote add origin https://github.com/YOUR-GITHUB-USERNAME/hw1.git
  git push -u origin master
  ```

- Refresh your browser to verify that behold, your code is now
  published on GitHub.  Congratulations!


## STEP 5. Make a Web Page

Now that we know we can safely publish our code any time, let's get back
to work creating a web page.

- Open your HTML page in Google Chrome.  You should see the word
  `Hello` from the work you did in Step 1.

- Modify the HTML to create any web page you like.  For example, try
  building a small piece of a website you use daily.  
  It could be a personal blog post, a family photo with caption,
  or your very own Etsy page.

  Try using these elements at least once:

  * `h1`
  * `p`
  * `img`
  * `a`
  * `ul`
  * `li`
  * `ol`

  If you prefer, you can simply copy the code shown in this image (click for a larger size).  I've intentionally provided an image so that you won't be tempted to simply
  copy and paste. Type the code by hand. Refresh your page often in Chrome to check on your progress.
  When you're done, it should look like the screenshot on the right:

  <a href="https://www.evernote.com/l/AAYJ_iL3xU5G0a-DJ_jlXdADH7FqwHY__1oB/image.png"
  target="_window">
  <img width="200px" style="border: solid 1px #CCC; box-shadow: 4px 4px 4px #CCC;" src="https://www.evernote.com/l/AAYJ_iL3xU5G0a-DJ_jlXdADH7FqwHY__1oB/image.png">
  </a>
  <a href="https://www.evernote.com/l/AAY3bEWy99NMfqkVQD4MxcLxMwwbSUhqAdQB/image.png"
  target="_window">
  <img width="200px" style="border: solid 1px #CCC; box-shadow: 4px 4px 4px #CCC;" src="https://www.evernote.com/l/AAY3bEWy99NMfqkVQD4MxcLxMwwbSUhqAdQB/image.png">
  </a>



- Don't worry about visual styling, colors, position, or appearance.  The goal
  is to learn how to type HTML code and make the content appear on the page.

- Find the `View Source` menu item in your browser and verify that your code matches
  your source code.

- Open the Inspector and spend a couple minutes trying to make sense of the `Elements` tab.


## STEP 6. Sync Your Local Repository with the Remote

Now that you've updated your web page, let's save your progress
by "committing" your latest changes into your local repository:

```
git add -A
git commit -m "Updated the web page"
```

And now let's push the latest changes to the remote repository:

```
git push
```

## STEP 7. Verify That You've Turned In Your Homework

Refresh your repository on GitHub.com and verify that your latest
code changes appear online.  If you can see your code online,
then so can I.  You're done!
