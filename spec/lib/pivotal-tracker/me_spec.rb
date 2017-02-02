require 'spec_helper'

describe PivotalTracker::Me do
  describe "#new" do
    it "initializes with valid attributes" do
      me = create(:me)

      expect(me).to be_a(PivotalTracker::Me)

      FactoryGirl.attributes_for(:me).each do |attribute, value|
        expect(me.send(attribute)).to eq(value)
      end
    end
  end
end
