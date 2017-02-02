require 'spec_helper'

describe PivotalTracker::Following do
  context '#new' do
    it 'initializes with attributes' do
      following = create(:following)

      expect(following).to be_a PivotalTracker::Following

      FactoryGirl.attributes_for(:following).each do |attribute, value|
        expect(following.send(attribute)).to eq value
      end
    end
  end
end
