class PivotalTracker::Notification < PivotalTracker::Resource
  attr_accessor :action, :comment_id, :context, :created_at, :epic_id, :id,
                :kind, :message, :new_attachment_count, :notification_type,
                :performer_id, :project_id, :read_at, :story_id, :updated_at
end
