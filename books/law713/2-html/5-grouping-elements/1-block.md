# Grouping with `<DIV>`

Sometimes we need to group a bunch of elements together
as a unit for purposes of CSS placement or styling.

A `div` has no visible representation itself, but is simply
a grouping construct so that you can apply a CSS rule to the
group as a whole.

## The Problem

Consider this problem: we'd like to draw a single green border that
surrounds all three paragraphs below.

``` html
<p>I like to eat cookies!</p>
<p>Baseball season starts in April.</p>
<p>Chicago is cold in the winter.</p>
```

<p><img width="250" src="https://www.evernote.com/l/AAZ_8XTB-jBCWYbF5mkJVWSNSiPVkQUFQDwB/image.png"></p>

The following CSS doesn't quite work.  It draws three borders instead of one (can you explain why?):

``` css
p { border: solid 3px green; padding: 12px; }
```

<img width="500" src="https://www.evernote.com/l/AAbKRrYqiExCnq8p_BqjmlxUlRRCm3WzOZsB/image.png">

## The Solution

First, we group the elements together with a `div` and apply a class
for our CSS rule:

``` html
<div class="framed">
  <p>I like to eat cookies!</p>
  <p>Baseball season starts in April.</p>
  <p>Chicago is cold in the winter.</p>
</div>
```

Next, we rewrite our CSS rule as a class definition:

``` css
.framed { border: solid 3px green; padding: 12px; }
```

Presto!

<img width="500" src="https://www.evernote.com/l/AAZhIKITeTVKvrqTlvWaO2l3NfNti4be0_oB/image.png">
