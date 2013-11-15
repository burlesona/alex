# Load Path and Encoding
ROOT_PATH = File.expand_path "..", File.dirname(__FILE__)
$:.unshift ROOT_PATH
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

# Database Connection
require 'sequel'
DB = Sequel.sqlite File.join(ROOT_PATH,'db','development.db')

# Require Files
Dir["./app/**/*.rb"].each { |file| require file }
