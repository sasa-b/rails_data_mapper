# frozen_string_literal: true
require_relative '../../src/infra/dependency/container'
require_relative '../../src/infra/dependency/auto_wire'

Infra::Dependency::AutoWire.configure do |container|
  container.register :persistence do
    ROM.env
  end
end
