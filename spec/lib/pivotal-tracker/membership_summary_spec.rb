require 'spec_helper'

describe PivotalTracker::MembershipSummary do
  describe '#new' do
    it 'initializes with valid attributes' do

      membership_summary = create(:membership_summary)

      FactoryGirl.attributes_for(:membership_summary).each do |attribute, value|
        expect(membership_summary.send(attribute)).to eq(value)
      end
    end
  end
end
