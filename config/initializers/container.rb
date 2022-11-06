require_relative '../../app/container.rb'

Dependency.configure do |container|
  container.register :persistence do
    ROM.env
  end
end
