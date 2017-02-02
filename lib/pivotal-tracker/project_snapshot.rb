class PivotalTracker::ProjectSnapshot
  
  attr_accessor :backlog, :current, :date, :icebox, :kind

  def initialize(attributes)
    attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end
