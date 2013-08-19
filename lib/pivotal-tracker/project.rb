class PivotalTracker::Project
  attr_accessor :atom_enabled, :bugs_and_chores_are_estimatable,
                :created_at, :current_iteration_number, :enable_following,
                :enable_incoming_emails, :enable_planned_mode, :enable_tasks,
                :has_google_domain, :id, :initial_velocity, :iteration_length,
                :kind, :name, :number_of_done_iterations_to_show, :point_scale,
                :point_scale_is_custom, :profile_content, :public, :start_time,
                :time_zone, :updated_at, :velocity_averaged_over, :version,
                :week_start_day
  def self.all
    PivotalTracker.get('/projects').parsed_response.map{|project| PivotalTracker::Project.new(project) }
  end

  def self.find(project_id)
    response = PivotalTracker.get("/projects/#{project_id}")
    if response.code == 200
      parsed_response = response.parsed_response
      PivotalTracker::Project.new(parsed_response)
    end
  end

  def initialize(project_attributes)
    project_attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end

  def stories
    response = PivotalTracker.get("/projects/#{self.id}/stories")
    if response.code == 200
      response.parsed_response.map do |story|
        PivotalTracker::Story.new(story)
      end
    else
      puts response.inspect
    end
  end
end