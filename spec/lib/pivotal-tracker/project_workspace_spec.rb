require 'spec_helper'

describe PivotalTracker::ProjectWorkspace do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:project_workspace) }
    let(:subject) { PivotalTracker::ProjectWorkspace.new(attributes) }
    let(:model) { PivotalTracker::ProjectWorkspace }
  end
end
