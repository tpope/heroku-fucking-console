require 'heroku/command/run'

class Heroku::Command::Fucking < Heroku::Command::Run

  # fucking:console [COMMAND]
  #
  # open a fucking console
  def console
    run_attached((["console"] + args).join(' '))
  end
  alias_command 'console', 'fucking:console'

  # fucking:rake COMMAND
  #
  # execute a fucking rake task
  def rake
    run_attached((["rake"] + args).join(' '))
  end
  alias_command 'rake', 'fucking:rake'

end
