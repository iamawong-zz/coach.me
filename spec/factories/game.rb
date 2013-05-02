require 'faker'

FactoryGirl.define do
  factory :game do |g|
    g.name { Faker::Name.name }
  end
end