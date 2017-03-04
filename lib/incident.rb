
class Incident
  include Mongoid::Document
  field :id, type: String
  field :lat, type: Float
  field :lon, type: Float
  field :location, type: String
  field :date, type: DateTime
  field :severity, type: String
  field :borough, type: String
  field :casualties, type: Array
  field :vehicles, type: Array

  # validates :id, presence: true
  # validates :lat, presence: true
  # validates :lon, presence: true
  # validates :location, presence: true
  # validates :date, presence: true
  # validates :severity, presence: true
  # validates :borough, presence: true
  # validates :casualties, presence: true
  # validates :vehicles, presence: true
end

# # data = JSON.parse((open('https://api.tfl.gov.uk/AccidentStats/2015')).read)
# data = JSON.parse(File.read 'public/2015.json')
# @bike_accidents = []

# data.each do |obj|
#   @bike_accidents.push(data[obj]) if data[obj]["vehicles"][0]["type"] == "PedalCycle"
#   Incident.create! @bike_accidents
# end

#   # rake cl in ruby

  # data.each_with_index do |obj, index|
  #   data[index].delete "$type"
  #   data[index]["casualties"].each {|c| c.delete "$type"}
  #   data[index]["vehicles"].each {|c| c.delete "$type"}
  # end