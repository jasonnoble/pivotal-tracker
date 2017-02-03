require 'spec_helper'

describe PivotalTracker::Notification do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:notification) }
    let(:model) { PivotalTracker::Notification }
  end
end
