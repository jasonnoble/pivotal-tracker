require "spec_helper"

describe PivotalTracker do
  describe "default attributes" do
    it "includes HTTParty" do
      expect(subject.class.ancestors).to include(HTTParty)
    end

    it "has the base url set" do
      expect(subject.class.base_uri).to eq('https://www.pivotaltracker.com/services/v5')
    end
  end

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