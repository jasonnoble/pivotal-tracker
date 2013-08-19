class PivotalTracker::Story
  attr_accessor :accepted_at, :created_at, :current_state, :deadline,
                :description, :estimate, :id, :kind, :labels, :name,
                :project_id, :requested_by_id, :story_type,
                :updated_at, :url

  def initialize(project_attributes)
    project_attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end