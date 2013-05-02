require 'spec_helper'

describe Game do
  before :each do
    @game = FactoryGirl.create(:game)
  end

  it "has a valid factory" do
    @game.should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:game, :name => nil).should_not be_valid
  end

  it "should not have duplicate names" do
    @game.should be_valid

    FactoryGirl.build(:game).should_not be_valid
  end

  it "should not save duplicate names" do
    @game.should be_valid

    expect { FactoryGirl.create!(:game) }.to raise_error
  end
end
