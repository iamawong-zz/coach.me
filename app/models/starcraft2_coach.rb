class Starcraft2Coach < ActiveRecord::Base
  has_one :users
  has_one :starcraft2_races
  attr_accessible :rate
end
