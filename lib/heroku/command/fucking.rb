require 'heroku/command/run'

# invoke commands without fucking "run"
class Heroku::Command::Fucking < Heroku::Command::Run

  # fucking:console [COMMAND]
  #
  # open a fucking console
  #
  # The exact command to run is chosen based on the CONSOLE config var or
  # heuristically based on the buildpack.
  def console
    console = config_vars.fetch('CONSOLE') do
      case get_app['buildpack_provided_description']
      when 'Ruby' then 'console'
      when 'Scala' then 'sbt console'
      when 'Python' then 'python manage.py shell'
      when 'Node.js' then 'node'
      when /^Clojure/ then 'lein repl'
      else                  'console'
      end
    end
    exec((["heroku", "run", "-a", app, console] + args).join(' '))
  end
  alias_command 'console', 'fucking:console'

  # fucking:rake COMMAND
  #
  # execute a fucking rake task
  def rake
    exec((["heroku", "run", "-a", app, "rake"] + args).join(' '))
  end
  alias_command 'rake', 'fucking:rake'

  private

  def platform_api
    require 'platform-api'
    @api ||= PlatformAPI.connect(Heroku::Auth.password)
  end

  def config_vars
    platform_api.config_var.info_for_app(app)
  rescue LoadError
    api.get_config_vars(app).body
  end

  def get_app
    platform_api.app.info(app)
  rescue LoadError
    api.get_app(app).body
  end

end
