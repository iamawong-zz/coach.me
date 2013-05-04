require 'spec_helper'

describe StarcraftRace do
  before :each do
    @race = FactoryGirl.create :starcraft_race
  end

  it "has a valid factory" do
    @race.should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:starcraft_race, :race => nil).should_not be_valid
  end

  it "should not have duplicate names" do
    @race.should be_valid

    FactoryGirl.build(:starcraft_race).should_not be_valid
  end

  it "should not save duplicate names" do
    @race.should be_valid

    expect { FactoryGirl.create!(:starcraft_race) }.to raise_error
  end
end
