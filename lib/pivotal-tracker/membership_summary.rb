class PivotalTracker::MembershipSummary
  attr_accessor :favorite, :id, :kind, :last_viewed_at, :project_color,
                :project_id, :project_name, :role

  def initialize(attributes)
    attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end
