require 'spec_helper'

describe PivotalTracker::Iteration do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:iteration) }
    let(:subject) { PivotalTracker::Iteration.new(attributes) }
    let(:model) { PivotalTracker::Iteration }
  end
end
