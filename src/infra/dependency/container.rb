require 'dry-container'

module Infra
  module Dependency
    class Container
      include Dry::Container::Mixin
    end
  end
end
