class PivotalTracker::Iteration

  attr_accessor :accepted, :accepted_points, :analytics, :created,
    :effective_points, :finish, :kind, :length, :number,
    :points, :project_id, :start, :story_ids, :team_strength,
    :velocity

  def initialize(attributes)
    attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end
