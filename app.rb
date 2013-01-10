require 'sinatra'
require 'thin'
require 'haml'
require 'coffee-script' if development?
# require 'susy'

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/app")
Dir.glob("#{File.dirname(__FILE__)}/app/*.rb") { |app| require File.basename(app, '.*') }

configure do
  set :haml, { :format => :html5 }
  set :server, 'thin'
end
