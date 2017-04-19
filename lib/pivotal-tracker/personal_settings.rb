class PivotalTracker::PersonalSettings < PivotalTracker::Resource
  attr_accessor :header_display_mode,
                :kind,
                :reports_autorefresh,
                :reports_notification_dismissed
end
