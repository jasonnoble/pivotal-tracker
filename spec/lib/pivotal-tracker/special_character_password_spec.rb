require "spec_helper"

describe PivotalTracker do
  context "account with special characters in password" do
    describe "GET me" do
      before do
        PivotalTracker::Client.token = ENV['PIVOTAL_TOKEN_ID']
        VCR.insert_cassette 'profile', :record => :new_episodes
      end

      after do
        VCR.eject_cassette
      end

      it "records the fixture" do
        PivotalTracker.get('/me')
      end
    end
  end
end
