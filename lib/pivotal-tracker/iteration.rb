class PivotalTracker::Iteration < PivotalTracker::Resource

  attr_accessor :accepted, :accepted_points, :analytics, :created,
    :effective_points, :finish, :kind, :length, :number,
    :points, :project_id, :start, :story_ids, :team_strength,
    :velocity

end
