require 'spec_helper'

describe PivotalTracker::ExternalStory do
  context '#new' do
    it 'initializes with attributes' do

      attributes = {name: 'name', description: 'description', integration_id: 1,
        external_id: 'ext', estimate: 1.0, state: 1, created_at: DateTime.now,
        external_requester: 'requester', external_owner: 'owner', requested_by_id: 1,
        owned_by_id: 2, owner_ids: [], story_type: 'type', extra: {}, kind: 'kind'}

      external_story = PivotalTracker::ExternalStory.new(attributes)

      expect(external_story).to be_a PivotalTracker::ExternalStory

      attributes.each do |attribute, value|
        expect(external_story.send(attribute)).to eq value
      end
    end
  end
end