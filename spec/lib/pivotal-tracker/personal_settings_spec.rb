require 'spec_helper'

describe PivotalTracker::PersonalSettings do
  context '#new' do
    it 'initializes attributes' do
      attributes = {header_display_mode: "expanded",
                    reports_autorefresh: true,
                    reports_notification_dismissed: false,
                    kind: "personal_settings"}

      personal_setting = PivotalTracker::PersonalSettings.new(attributes)

      expect(personal_setting).to be_a PivotalTracker::PersonalSettings

      attributes.each do |attribute, value|
        expect(personal_setting.send(attribute)).to eq value
      end
    end
  end
end
