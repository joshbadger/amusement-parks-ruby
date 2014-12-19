require 'yaml'
require 'pp'

parks = YAML.load(File.read('../data/amusement_parks.yml'))

# challenge 1 - Indexing by id
result = {}
parks.each do |park|
  result[park[:id]] ||= {}
  result[park[:id]] = park
end
result

pp result

# Challenge 2 - Indexing by Country
result = {}
parks.each do |park|
  result[park[:country]] ||= []
  result[park[:country]] << park
end

pp result

# Challenge 3 - Indexing by Country and State
result = {}
parks.each do |park|
  result["#{park[:state]}, #{park[:country]}"] ||= []
  result["#{park[:state]}, #{park[:country]}"] << park
end

pp result
