require 'spec_helper'

describe Game do
  it "has a valid factory" do
    FactoryGirl.create(:game).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:game, :name => nil).should_not be_valid
  end

  it "should not have duplicate names" do
    FactoryGirl.create(:game, :name => "sc").should be_valid

    FactoryGirl.build(:game, :name => "sc").should_not be_valid
  end

  it "should not save duplicate names" do
    FactoryGirl.create(:game, :name => "sc").should be_valid

    expect { FactoryGirl.create!(:game, :name => "sc") }.to raise_error
  end
end
