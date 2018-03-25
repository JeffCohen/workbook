# Tools



## STEP 1: Get a GitHub Account (5 minutes)

*Students who took KIEI-924 and already have a GitHub account should skip to Step 2.*

1. Use your NU email address for a free Student Pack at [GitHub.com](https://education.github.com/pack).  Use it to sign up
for a free GitHub account.  They will probably require
you to confirm your .edu email address, which might take minutes but sometimes
takes a day or two.  Watch your inbox for a confirmation email.

2. Once you have signed in, go to your [Settings](https://github.com/settings/profile) and select your NU email
address as your **Public email** address, _then scroll down and click
the **Update profile** button_.

<p><a href="https://www.evernote.com/l/AAZiKCcCKHRD9bIGWzdNhltwnvnR85lRyV8B/image.png">
<img width="400px" src="https://www.evernote.com/l/AAZiKCcCKHRD9bIGWzdNhltwnvnR85lRyV8B/image.png">
</a></p>


## STEP 2: Configure The Environment for Class

Copy and paste the following command into the Terminal window at the bottom of your IDE.

*Make sure you copy the entire line, including that hyphen at the end!*

```
curl -sL https://www.kiei925.com/c9setup | bash -E -
```


Close the Terminal pane and start a new one by using the `+` sign or using the menu `Window | New Terminal`.

If all goes well, you should see a nice `~/code $` prompt:


## STEP 2: Configure Version Control

Now we can setup your Git version control system.

Type these commands (do not copy and paste), substituting **your name and your NU email address below**.

   ```
   git config --global color.ui true
   git config --global user.name "YOUR NAME"
   git config --global user.email "YOUR-EMAIL@kellogg.northwestern.edu"
   ```
