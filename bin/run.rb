require 'pp'
require 'yaml'
require_relative '../lib/parks'

data = YAML.load(File.read('../data/amusement_parks.yml'))
parks = Parks.new(data)

pp parks.index_by_id
pp parks.index_by_country
pp parks.index_by_country_and_state
