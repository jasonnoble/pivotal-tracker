class PivotalTracker::Proxy
  attr_reader :owner, :target

  def initialize(owner, target)
    @owner  = owner
    @target = target
  end

  def all
    target.all(owner.id)
  end

  def create(params)
    target.create(params, owner.id)
  end

end
