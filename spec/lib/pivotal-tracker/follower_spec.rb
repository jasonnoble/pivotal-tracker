require 'spec_helper'

describe PivotalTracker::Follower do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:follower) }
    let(:subject) { PivotalTracker::Follower.new(attributes) }
    let(:model) { PivotalTracker::Follower }
  end
end
