require 'spec_helper'

describe PivotalTracker::GoogleAttachment do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:google_attachment) }
    let(:model) { PivotalTracker::GoogleAttachment }
  end
end
