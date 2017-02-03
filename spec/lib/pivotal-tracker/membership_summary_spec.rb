require 'spec_helper'

describe PivotalTracker::MembershipSummary do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:membership_summary) }
    let(:model) { PivotalTracker::MembershipSummary }
  end
end
