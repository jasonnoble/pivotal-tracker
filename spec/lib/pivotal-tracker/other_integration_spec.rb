require 'spec_helper'

describe PivotalTracker::OtherIntegration do
  describe '#new' do
    it 'initializes with valid attributes' do
      attributes = {id: 0,
                    project_id: 0,
                    can_import: true,
                    base_url: "/",
                    is_other: true,
                    story_name: "story",
                    name: "name",
                    active: true,
                    created_at: DateTime.now,
                    updated_at: DateTime.now,
                    import_api_url: "/",
                    basic_auth_username: "username",
                    basic_auth_password: "password",
                    kind: "kind"
                    }

      other_integration = PivotalTracker::OtherIntegration.new(attributes)

      attributes.each do |attribute, value|
        expect(other_integration.send(attribute)).to eq(value)
      end
    end
  end
end
