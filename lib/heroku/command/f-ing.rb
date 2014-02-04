require 'heroku/command/run'

# invoke commands without f-ing "run"
class Heroku::Command::fing < Heroku::Command::Run

  # f-ing:console [COMMAND]
  #
  # open a f-ing console
  def console
    run_attached((["console"] + args).join(' '))
  end
  alias_command 'console', 'fing:console'

  # fing:rake COMMAND
  #
  # execute a fing rake task
  def rake
    run_attached((["rake"] + args).join(' '))
  end
  alias_command 'rake', 'fing:rake'

end
