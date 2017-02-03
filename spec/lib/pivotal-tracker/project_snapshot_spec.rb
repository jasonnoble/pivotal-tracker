require 'spec_helper'

describe PivotalTracker::ProjectSnapshot do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:project_snapshot) }
    let(:model) { PivotalTracker::ProjectSnapshot }
  end
end
