target :app do
  signature 'sig'

  check 'app'
  check 'src'
  check 'lib'
  check 'Gemfile'                   # File name

  ignore 'app/channels/application_cable/channel.rb'
  ignore 'app/channels/application_cable/connection.rb'
  ignore 'app/mailers/application_mailer.rb'
  # check "app/models/**/*.rb"        # Glob
  # ignore "lib/templates/*.rb"

  # library "pathname", "set"       # Standard libraries
  # library "strong_json"           # Gems

  configure_code_diagnostics(Steep::Diagnostic::Ruby.strict)       # `strict` diagnostics setting
  # configure_code_diagnostics(Steep::Diagnostic::Ruby.lenient)      # `lenient` diagnostics setting
  configure_code_diagnostics do |hash|             # You can setup everything yourself
    hash[Steep::Diagnostic::Ruby::NoMethod] = :information
  end
end

target :test do
  signature 'sig'

  check 'test'

  # library "pathname", "set"       # Standard libraries
end