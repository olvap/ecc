require 'yaml'

class ApplicationController < ActionController::Base
  before_filter :authenticate
  protect_from_forgery

  SETTINGS = HashWithIndifferentAccess.new( YAML::load(File.open("#{::Rails.root}/config/settings.yml")) )

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == SETTINGS[:user] && password == SETTINGS[:password]
    end
  end
end
