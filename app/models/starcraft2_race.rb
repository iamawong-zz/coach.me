class Starcraft2Race < ActiveRecord::Base
  attr_accessible :race

  validates_presence_of :race
  validates_uniqueness_of :race
end
