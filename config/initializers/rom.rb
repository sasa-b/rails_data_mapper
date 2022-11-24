# frozen_string_literal: true

ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [:sql, ENV.fetch('DATABASE_URL'), extensions: %i[pg_timestamptz]]
  config.auto_registration_paths = [{ path: 'src/infra/persistence', namespace: 'Infra::Persistence' }]
end