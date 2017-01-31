require 'spec_helper'

describe PivotalTracker::Me do

  describe "#new" do
    it "initializes with valid attributes" do
      attributes = {api_token: '0',
                    created_at: DateTime.now,
                    email: 'example@example.com',
                    has_google_identity: true,
                    id: 1,
                    initals: "FL",
                    kind: "me",
                    name: "username",
                    personal_settings: {kind: "string"},
                    project_ids: ["#{ENV['PROJECT_ID']}"],
                    receives_in_app_notifications: true,
                    time_zone: Time.now.zone,
                    updated_at: DateTime.now,
                    username: "username",
                    workspace_ids: [1,2]}
                    
      me = PivotalTracker::Me.new(attributes)

      expect(me).to be_a(PivotalTracker::Me)

      attributes.each do |attribute, value|
        expect(me.send(attribute)).to eq(value)
      end
    end
  end
end
