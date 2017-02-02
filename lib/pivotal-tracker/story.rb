class PivotalTracker::Story < PivotalTracker::Resource
  attr_accessor :accepted_at, :created_at, :current_state, :deadline,
                :description, :estimate, :id, :kind, :labels, :name,
                :owner_ids, :owned_by_id, :project_id, :requested_by_id, :story_type,
                :updated_at, :url

  def self.all(project_id)
    stories = PivotalTracker::ApiService.all_nested('projects', project_id, 'stories')
    stories.map { |story| new(story) }
  end
end
