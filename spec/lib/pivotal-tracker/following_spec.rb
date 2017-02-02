require 'spec_helper'

describe PivotalTracker::Following do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {id: 1, person_id: 1, story_id: 1, epic_id: 1, kind: 'kind'}
      following = PivotalTracker::Following.new(attributes)

      expect(following).to be_a PivotalTracker::Following

      attributes.each do |attribute, value|
        expect(following.send(attribute)).to eq value
      end
    end
  end
end
