class ApplicationController < ActionController::Base
  include Dependency::Container.inject :persistence
end
