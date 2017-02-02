require 'spec_helper'

describe PivotalTracker::FileAttachment do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:file_attachment) }
    let(:subject) { PivotalTracker::FileAttachment.new(attributes) }
    let(:model) { PivotalTracker::FileAttachment }
  end
end
