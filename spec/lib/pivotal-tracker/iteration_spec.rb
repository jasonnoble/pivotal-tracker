require 'spec_helper'

describe PivotalTracker::Iteration do
  context '#new' do
    it 'initializes with attributes' do
      iteration = create(:iteration)

      expect(iteration).to be_a PivotalTracker::Iteration
      FactoryGirl.attributes_for(:iteration).each do |attribute, value|
        expect(iteration.send(attribute)).to eq value
      end
    end
  end
end
