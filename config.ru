require 'sprockets'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'client/javascripts'
  environment.append_path 'client/stylesheets'
  environment.append_path 'client/templates'
  run environment
end

map '/' do
  run Alex::App.new
end
