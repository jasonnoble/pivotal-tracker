require 'spec_helper'

describe PivotalTracker::Account do
  # We will be testing the class, not the instance
  subject { PivotalTracker::Account }

  before do
    set_token
    VCR.insert_cassette 'account', :record => :new_episodes
  end

  after do
    VCR.eject_cassette
  end

  describe "#find" do
    let(:account) { subject.find(account_id) }
    context "with a valid account id" do
      let(:account_id) { ENV['PIVOTAL_ACCOUNT_ID'].to_i }

      it "is an account" do
        expect(account).to be_a(PivotalTracker::Account)
      end

      it "has the right id" do
        expect(account.id).to eq(account_id)
      end
    end

    context "with an invalid account id" do
      let(:account_id) { 123456789123456789 }

      it "returns an error" do
        expect { account }.to raise_error PivotalTracker::ApiService::InvalidRequest
      end
    end
  end

  describe '.memberships' do
    let(:account) { subject.find(ENV['PIVOTAL_ACCOUNT_ID'].to_i) }

    it "returns all memberships" do
      expect(account.memberships.all).to be_an(Array)
    end

    it "all returned objects are memberships" do
      account.memberships.all.each do |membership|
        expect(membership).to be_a(PivotalTracker::AccountMembership)
      end
    end

    it "can add a new membership" do
      membership_params = {:email => Faker::Internet.email, :name => Faker::Name.name, :initials => "AW"}
      new_membership = (account.memberships.create(membership_params))

      expect(new_membership).to be_a(PivotalTracker::AccountMembership)
    end
  end
end
