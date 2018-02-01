# The Server Log

The server log is simply the output on your screen that appears after
your run `rails server`.

## The Request-Response cycle

Each time you access a URL in your application, you will see an audit
trail appear in the server log.  Here's a typical example:

```
Started GET "/stations" for 127.0.0.1 at 2018-02-01 12:54:42 -0600
Processing by StationsController#index as HTML
  Rendering stations/index.html.erb within layouts/application
  Station Load (0.1ms)  SELECT "stations".* FROM "stations"
  Rendered stations/index.html.erb within layouts/application (1.0ms)
Completed 200 OK in 9ms (Views: 6.8ms | ActiveRecord: 0.1ms)
```

It's important to know how to scan this kind of information.  

### The Request Line

```
Started GET "/stations" for 127.0.0.1 at 2018-02-01 12:54:42 -0600
```

This shows that the browser is trying to use the URL path `/stations`, and this
is the beginning of the request-response cycle.  You can also the IP address
of the machine making the request (127.0.0.1) and the date and time
of the request.

### The Processing Line

```
Processing by StationsController#index as HTML
```

This means that you `routes.rb` file supports the URL path, and Rails was
able to start processing the request.

### View Rendering

Lines like this:

```
Rendering stations/index.html.erb within layouts/application
```
and

```
Rendered stations/index.html.erb within layouts/application (1.0ms)
```

mean that Rails decided to use the `app/views/stations.html.erb`
file in order to generate an HTML response.  Rails will first
evaluate any Ruby that's embedded in the file, until only plain
HTML remains to be sent.

### Response Code

This line always appears last in the cycle:

```
Completed 200 OK in 9ms (Views: 6.8ms | ActiveRecord: 0.1ms)
```

The code `200` means that the request was handled successfully.
