require 'spec_helper'

describe PivotalTracker::ProjectWorkspace do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:project_workspace) }
    let(:model) { PivotalTracker::ProjectWorkspace }
  end
end
