# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create :name => "sc"
Game.create :name => "sc2"
Game.create :name => "dota2"
Game.create :name => "lol"

StarcraftRace.create :race => "terran"
StarcraftRace.create :race => "protoss"
StarcraftRace.create :race => "zerg"

Starcraft2Race.create :race => "terran"
Starcraft2Race.create :race => "protoss"
Starcraft2Race.create :race => "zerg"