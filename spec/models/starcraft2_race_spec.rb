require 'spec_helper'

describe Starcraft2Race do
  before :each do
    @race = FactoryGirl.create :starcraft2_race
  end

  it "has a valid factory" do
    @race.should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:starcraft2_race, :race => nil).should_not be_valid
  end

  it "should not have duplicate names" do
    @race.should be_valid

    FactoryGirl.build(:starcraft2_race).should_not be_valid
  end

  it "should not save duplicate names" do
    @race.should be_valid

    expect { FactoryGirl.create!(:starcraft2_race) }.to raise_error
  end
end
