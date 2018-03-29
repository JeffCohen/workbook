# Cloud9 Setup (approx. 8 minutes)

This page will prepare you for the first day of class.

In order to complete this setup, you will need:

* Your NU NetID (see me if you do not have a NetID)
* The super-secret password, which is `student`
* A modern browser such as Google Chrome

## Step 1: Login to Cloud9

1. Go to [https://kiei925.signin.aws.amazon.com/console](https://kiei925.signin.aws.amazon.com/console)
   <%= tiny_thumbnail_for 'https://www.evernote.com/l/AAbpf8GLgZ5ExKrM9tQaNafdQNqOdBdqV5MB/image.png' %>
2. The account ID should already be filled in as `kiei925`
3. For `IAM user name`, enter your NU NetID.
4. For `Password`, enter the word `student`

You might be asked to change your password the first time you login.



If all went well, you will probably see this (confusing) "console" screen:

<p><%= image_for 'https://www.evernote.com/l/AAZuuP5AUOJIMIKJw2cXt0GchDw0d-5i8Q4B/image.png' %></p>

## Step 2: Create Your Environments

Search for the service named "Cloud9" and select it:

<p><%= image_for 'https://www.evernote.com/l/AAZfDhVpyS9G0bMNtUj05yY7XGxHQTPTOS0B/image.png' %></p>

Click the "Create Environment" button:

<p><%= image_for 'https://www.evernote.com/l/AAZgtTp6UsVO6IPYU1Oe-P6gOFCwkE2_CHcB/image.png' %></p>

Give it the name `classroom` and click "Next Step" (all lowercase, just as you see in the screenshot):

<p><%= image_for 'https://www.evernote.com/l/AAZxSozFdJVC-7jKT2heSa29WghN23ym-6oB/image.png' %></p>

Leave all of the defaults selected for "Environment settings" and just click "Next Step"
again.  

<p><%= image_for 'https://www.evernote.com/l/AAYL-CL8M1RN14Svi18k_sOVBQiW7jP0fCgB/image.png' %></p>

You'll get to another review page.  Click "Create Environment".

<p><%= image_for 'https://www.evernote.com/l/AAaPcO0L_yhJkICK-ddvjZ0K6Gph8y_CzfUB/image.png' %></p>

It can take a few minutes for this process to finish.  When it's complete, you'll see
your "IDE" appear!

<p><%= image_for 'https://www.evernote.com/l/AAacZhcjLitKyrrgeZAvpQmSesO-2NpfXusB/image.png' %></p>

Return to your Cloud9 dashboard by using the menu bar to select `AWS Cloud 9 > Go To Your Dashboard`

<p><%= image_for 'https://www.evernote.com/l/AAZShaduuLRDqI_m-bUDD8KMjbzM-P5tNCQB/image.png' %></p>

Repeat this process to create another environment called `homework`.

Your dashboard should now look like this:

<p><%= image_for 'https://www.evernote.com/l/AAaaQRomEbtNVrpdrgpfC80RDz077-q31-4B/image.png' %></p>


Congratulations! You are ready to [install a few last tools](3-tools.md).
