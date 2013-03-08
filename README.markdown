# Heroku fucking console

    $ heroku console
     !    `heroku console` has been disabled. Please use `heroku run` to run a console:
     !    https://devcenter.heroku.com/changelog-items/109."

FUCK OFF.  You know what I fucking mean.  Just fucking do it.

After years of annoyance, I'm finally fucking fixing this once and for all.

## Installation

    $ heroku plugins:install https://github.com/tpope/heroku-fucking-console.git

## Usage

    $ heroku help fucking
    Additional commands, type "heroku help COMMAND" for more details:

      fucking:console  #  open a fucking console
      fucking:rake     #  execute a fucking rake task

These commands are aliased to be namespace-free.  That's the whole fucking
point.

## See also

    $ heroku --app myapp console
     !    `--app` is not a heroku command.
     !    Perhaps you meant `--help` or `apps`.
     !    See `heroku help` for a list of available commands.

Don't you just hate that shit?  Check out [Heroku wildcards][].

[Heroku wildcards](https://github.com/tpope/heroku-wildcards)

## License

Copyright © Tim Pope

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
