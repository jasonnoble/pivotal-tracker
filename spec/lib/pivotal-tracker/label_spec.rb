require 'spec_helper'

describe PivotalTracker::Label do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:label) }
    let(:model) { PivotalTracker::Label }
    let(:subject) { model.new(attributes) }
  end
end
