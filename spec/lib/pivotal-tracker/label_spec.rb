require 'spec_helper'

describe PivotalTracker::Label do

  describe '#new' do 
    it 'initializes with attributes' do
      attributes = {:id => 1, :project_id => 2, :name => "New Label", :kind => "Work", :created_at => Time.now, :updated_at => Time.now, :counts => 4}
      label = PivotalTracker::Label.new(attributes)

      expect(label).to be_a(PivotalTracker::Label)

      attributes.each do |attribute, value|
        expect(label.send(attribute)).to eq(value)
      end
    end
  end
end
