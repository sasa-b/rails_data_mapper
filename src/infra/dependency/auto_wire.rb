module Infra
  module Dependency
    class AutoWire
      attr_reader :app, :container, :autowire

      class << self
        attr_reader :instance

        def configure
          container = Container.new
          yield(container)
          @instance = new(Rails.application, container)
          freeze
        end

        def inject(*keys)
          @instance.autowire[*keys]
        end
      end

      def initialize(app, container)
        @app = app
        @container = container
        @autowire = Dry::AutoInject(container)
      end
    end

  end
end