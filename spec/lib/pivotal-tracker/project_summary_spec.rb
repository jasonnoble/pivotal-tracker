require 'spec_helper'

describe PivotalTracker::ProjectSummary do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:project_summary) }
    let(:model) { PivotalTracker::ProjectSummary }
  end
end
