# frozen_string_literal: true
require_relative '../../src/infra/dependency/container'
require_relative '../../src/infra/dependency/auto_wire'
require_relative '../../src/infra/persistence/repository/users'

Infra::Dependency::AutoWire.configure do |container|
  container.register :persistence do
    ROM.env
  end

  container.register :user_repository do
    Infra::Persistence::Repository::Users.new(container: ROM.env)
  end
end
