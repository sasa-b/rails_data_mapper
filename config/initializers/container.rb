require_relative '../../app/container.rb'

App.configure do |container|
  container.register('persistence') do
    ROM.env
  end
end
