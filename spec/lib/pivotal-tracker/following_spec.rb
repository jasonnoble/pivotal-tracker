require 'spec_helper'

describe PivotalTracker::Following do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:following) }
    let(:model) { PivotalTracker::Following }
  end
end
