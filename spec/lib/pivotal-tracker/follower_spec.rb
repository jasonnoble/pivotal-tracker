require 'spec_helper'

describe PivotalTracker::Follower do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {id: 1, name: 'name', email: 'email@example.com',
        initials: 'LC', username: 'user', kind: 'kind'}
      
      follower = PivotalTracker::Follower.new(attributes)

      expect(follower).to be_a PivotalTracker::Follower

      attributes.each do |attribute, value|
        expect(follower.send(attribute)).to eq value
      end
    end
  end
end