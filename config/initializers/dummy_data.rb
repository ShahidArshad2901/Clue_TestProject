# config/initializers/dummy_data.rb
require 'json'

file = File.read("#{Rails.root}/app/assets/dummy.json")
DUMMY_DATA = JSON.parse(file)