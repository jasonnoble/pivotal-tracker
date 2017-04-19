class PivotalTracker::Comment < PivotalTracker::Resource
  attr_accessor :attachment_ids, :commit_identifier, :commit_type, :created_at,
                :epic_id, :file_attachment_ids, :google_attachment_ids, :id,
                :kind, :person_id, :story_id, :text, :updated_at

end
