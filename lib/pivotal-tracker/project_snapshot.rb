class PivotalTracker::ProjectSnapshot
  
  attr_accessor :date, :current, :backlog, :icebox, :kind

  def initialize(attributes)
    attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end
