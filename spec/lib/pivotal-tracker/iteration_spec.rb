require 'spec_helper'

describe PivotalTracker::Iteration do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:iteration) }
    let(:model) { PivotalTracker::Iteration }
  end
end
