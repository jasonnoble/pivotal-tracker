require 'spec_helper'

describe PivotalTracker::ExternalStory do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:external_story) }
    let(:model) { PivotalTracker::ExternalStory }
    let(:subject) { model.new(attributes) }
  end
end
