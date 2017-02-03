require 'spec_helper'

describe PivotalTracker::Me do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:me) }
    let(:model) { PivotalTracker::Me }
  end
end
