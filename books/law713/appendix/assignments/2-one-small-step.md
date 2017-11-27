# Assignment: One Small Step

Today we will take our first step into computer programming!

No actual programming knowledge is needed to successfully complete
this assignment. The goal is to become acquainted with how to create
files, write code, and publish your work as a  GitHub repository.

Be careful!  *Work slowly.*  There are many steps required,
and each step has multiple sub-steps. If you get stuck, reach out
for help.

## STEP 1. Create a New Git Repository

> Be on the lookout for error messages!  It's important to learn how
  to recognize successful steps from erroneous ones.

- Create a folder named `c:\code\hw1` (Windows) or `~/code/hw1` (Mac)
- Start Atom and open the folder.
- Create a file named `hello.html`
- In `hello.html` insert the following text: `<h1>Hello</h1>`
- Save the file.
- Go to your command prompt window and enter these commands one at a time:

  ```
  git init
  git add -A
  git commit -m "Completed step 1"
  ```


## STEP 2. Create a Remote GitHub Repository

Now that you have a local Git repository (congratulations!), your goal
is to "push" a copy to your account at GitHub.com.

- Login to GitHub.com
- Click "New Repository"
- Fill in the form with these details:
  - Repository Name: `hw1`
  - Leave everything else as-is
- Click the green Create Repository button.
- You should now be staring at some extra GitHub instructions,
  but you don't need to do any of that just yet.  Just keep the page open.
- Switch back at your command prompt and substitute your GitHub username below:

  ```
  git remote add origin https://github.com/YOUR-GITHUB-USERNAME/hw1.git
  git push -u origin master
  ```

- Refresh your browser to verify that behold, your code is now
  published on GitHub.  Congratulations!


## STEP 3. Make a Web Page

- Open your HTML page in Google Chrome.  You should see the word
  `Hello` from the work you did in Step 1.

- Modify the HTML to create any web page you like.  For example, try
  building a small piece of a website you use daily.  
  It could be a personal blog post, a family photo with caption,
  or your very own Etsy page.

  If you prefer, you can copy the code
  shown in this image (click for a larger size).  You'll
  have to type the code by hand.

  <a href="https://www.evernote.com/l/AAb8B8bUIUJOpZdVedKKjfMETAsk5SvFIyEB/image.png"
  target="_window">
  <img width="200px" style="border: solid 1px #CCC; box-shadow: 4px 4px 4px #CCC;" src="https://www.evernote.com/l/AAb8B8bUIUJOpZdVedKKjfMETAsk5SvFIyEB/image.png">
  </a>



- Refresh your page often in Chrome to check on your progress.

- Don't worry about visual styling, colors, position, or appearance.  The goal
  is to learn how to type HTML code and make the content
  appear on the page.

- Find the `View Source` menu item and verify that your code matches
  your source code.

- Open the Inspector and spend a couple minutes trying to make sense of the `Elements` tab.


## STEP 4. Sync Your Local Repository with the Remote

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

## STEP 5. Verify That You've Turned In Your Homework

Refresh your repository on GitHub.com and verify that your latest
code changes appear online.  If you can see your code online,
then so can I.  You're done!
