# Custom Logging

All programming frameworks provide a way for the developer to emit arbitrary lines 
of information into the logs.  As Rails developers, it is common practice to use the 
server log to aid the debugging of troublesome code, keep an audit trail of system activity, 
or anything else that we think would be helpful.

Remember, the server log is never seen by the user.  It's sole purpose is to provide
a paper trail of what our application is doing, so that we can better understand how
the application is working.

## Using `Rails.logger`

When you want to emit something to log, you can do this:

``` ruby
Rails.logger.debug "This line will appear in the server log. Isn't that neat?"
```

The `Rails.logger` expression returns a "logger" object that has methods you can call
to try to send a line of text to the log file.  There are several methods, each corresponding
to a particular "log level".  

## Log Levels

Available log levels, in order, are:

1. `critical`
1. `warn`
1. `info`
1. `debug`

The logger is initialized to one of these levels when your application starts up.  This log level determines whether or not your `Rails.logger` statements will affect the server log.

In order for your text to be written into the log, the `logger` method you use
must be equal to, or higher than, the application's configured log level.

Here's an example.  Suppose the application's log level is set to `warn`.  The following code 
successfully write both lines of text to the log file:

``` 
Rails.logger.critical "Uh oh, something bad happened!"
Rails.logger.warn "I hope someone checks this log file to figure it out!"
```

On the other hand, the following code will **not** be sent to the log:

``` 
Rails.logger.info "The Cubs won today, 7-1."
```

The method we used, `.info`, was *lower* than the application's log level so the logger object
did not write our text into the file.

## Setting the Application's Log Level

You can set the log level in the environment file, such as `/config/environments/production/rb`
by using a line like this:

``` 
config.log_level = :debug
```

Different environments often use different log levels.  Rails defaults to `:debug` in all
environments.

## Shorthand Usage

If you are in a controller that derives from `ApplicationController`, a model that derives from
`ApplicationRecord`, or in a view template, you can omit the `Rails.` prefix:

``` ruby
class ProductsController < ApplicationController

  def create
    logger.debug "About to create a product...."
    # rest of your code here...
  end

end
```

  
