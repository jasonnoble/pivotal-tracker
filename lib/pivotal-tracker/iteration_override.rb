class PivotalTracker::IterationOverride

  attr_accessor :kind, :length, :number, :project_id, :team_strength

  def initialize(attributes)
    attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end