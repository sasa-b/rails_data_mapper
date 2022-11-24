class ApplicationController < ActionController::Base
  include Infra::Dependency::AutoWire.inject :persistence
  include Infra::Dependency::AutoWire.inject :user_repository

  def test
    abort user_repository.inspect
  end
end
