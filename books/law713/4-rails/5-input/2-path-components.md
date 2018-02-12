# Using Path Components as Input

Most web applications use URL paths to influence the content of a
particular page.  Look at this Amazon url:

```
https://www.amazon.com/dp/B06XCM9LJ4/ref=ods_gw_ha_rr_tpr_mt_im4?pf_rd_p=0eb816b8-bca6-4556-aac0-a6519d42973f&pf_rd_r=FQERWFMBPSSNDSVZ9ZP1
```

Wow that's a very long URL!  But for now, let's ignore everything after the `?`:

```
https://www.amazon.com/dp/B06XCM9LJ4/ref=ods_gw_ha_rr_tpr_mt_im4
```

Amazon responds with a page showing a second-generation Echo:

<img width="600px" src="https://www.evernote.com/l/AAamBO1ZGLlJDZcI445upVyXtcz22wCuzjEB/image.png">

If you study the URL for a bit, you may notice the part that says `B06XCM9LJ4` which just happens to be the "ASIN", or Amazon identification number, for the second-generation Echo.

We can test our theory by using this exact same URL but swapping in a different
ASIN in that spot:

```
https://www.amazon.com/dp/B01FIS82WQ/ref=ods_gw_ha_rr_tpr_mt_im4
```

We now get a page for giftcards!

<img width="600px"
src="https://www.evernote.com/l/AAYeTFx-saZGAINcLynX7SVl1VJb3N7uKfYB/image.png">

## Dynamic Path Segments

We have discovered that the second part of an Amazon URL path acts as a
_dynamic segment_ that influences the HTML response.

When we do something like this in `config/routes.rb`:

``` ruby

resources :books

```

we also have a URL that supports a dynamic segment in the second part
of the URL path:

```
http://localhost:3000/books/9
````

Here, the `9` is the second path component and it is allowed to be dynamic: it can be anything.  Rails will capture this value in the `params` hash like this:

```
Parameters: { "id" => "9" }
```

This means that our code can retrieve the actual value in the dynamic
segment like this:

``` ruby
params["id"]
```

Here's an example of how we would apply this to our application:

``` erb
<%%# This is app/views/books/show.html.erb %>

<%% book = Book.find_by(id: params["id"]) %>
```

Our variable `book` now refers to the row in the database that was
indicated in the URL.  In other words, our `show.html.erb` will automatically
reflect the book identified by the URL.
