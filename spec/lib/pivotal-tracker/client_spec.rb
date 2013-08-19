require "spec_helper"

describe PivotalTracker::Client do
  # We will be testing the class, not the instance
  subject { PivotalTracker::Client }

  before do
    subject.token = nil
    VCR.insert_cassette 'fetch_token', :record => :new_episodes
  end

  after do
    VCR.eject_cassette
  end

  describe "#token(username, password)" do
    it "fetches a token" do
      expect{ subject.token(ENV['PIVOTAL_USER_NAME'], ENV['PIVOTAL_USER_PASSWORD']) }.to change(PivotalTracker::Client, :token).from(nil).to(ENV['PIVOTAL_TOKEN_ID'])
    end
  end

  describe "#token=(token)" do
    it "sets the token header" do
      expect{ subject.token = '1234567890' }.to change(PivotalTracker, :headers).from({}).to({ "X-TrackerToken" => "1234567890" })
    end
  end
end