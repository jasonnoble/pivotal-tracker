class PivotalTracker::IterationOverride

  attr_accessor :number, :project_id, :length, :team_strength, :kind

  def initialize(attributes)
    attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end