# Heroku fucking console

    $ heroku console
     !    `heroku console` has been disabled. Please use `heroku run` to run a console:
     !    https://devcenter.heroku.com/changelog-items/109."

FUCK OFF.  You know what I fucking mean.  Just fucking do it.

After years of annoyance, I'm finally fucking fixing this once and for all.

## Installation

    heroku plugins:install https://github.com/tpope/heroku-fucking-console.git

Or check out the version for [hk][]:

    mkdir -p /usr/local/lib/hk/plugin &&
    curl -Sso /usr/local/lib/hk/plugin/console \
        https://raw.github.com/tpope/heroku-fucking-console/master/console &&
    chmod +x /usr/local/lib/hk/plugin/console

[hk]: https://github.com/heroku/hk

## Usage

    $ heroku help fucking
    Additional commands, type "heroku help COMMAND" for more details:

      fucking:console  #  open a fucking console
      fucking:rake     #  execute a fucking rake task
      fucking:bash     #  execute a fucking bash shell


These commands are aliased to be namespace-free.  That's the whole fucking
point.

The original console command was Ruby only, but this enhanced version special
cases all sorts of shit based on the buildpack (e.f.g., `lein repl` for
Clojure) and, if that's not good enough, lets you set the `CONSOLE` config
variable to invoke whatever the fuck you want.

## See also

    $ heroku --app myapp console
     !    `--app` is not a heroku command.
     !    Perhaps you meant `--help` or `apps`.
     !    See `heroku help` for a list of available commands.

Don't you just hate that shit?  Check out [Heroku wildcards][].

[Heroku wildcards]: https://github.com/tpope/heroku-wildcards

## License

Copyright © Tim Pope

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
