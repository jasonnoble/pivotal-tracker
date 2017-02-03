require 'spec_helper'

describe PivotalTracker::ProjectIdAndVersion do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:project_id_and_version) }
    let(:model) { PivotalTracker::ProjectIdAndVersion }
  end
end
