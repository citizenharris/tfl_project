require 'sinatra'
require 'pry'
require 'json'
require 'google_maps_service'
require 'mongoid'
require './lib/incident.rb'


Mongoid.load!('./mongoid.yml')

get '/' do
  # binding.pry
  @incidents = Incident.where('vehicles.0.type' => 'PedalCycle')
  erb :index
end


# post '/refresh_data' do
# # gets new api data from tfl
# # json parses it
# # overwrites mongo database
# end