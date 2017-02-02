require 'spec_helper'

describe PivotalTracker::IterationOverride do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:iteration_override) }
    let(:subject) { PivotalTracker::IterationOverride.new(attributes) }
    let(:model) { PivotalTracker::IterationOverride}
  end
end
