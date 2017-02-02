class PivotalTracker::ExternalStory < PivotalTracker::Resource
  attr_accessor :created_at, :description, :estimate , :external_id,
    :external_owner, :external_requester, :extra, :integration_id,
    :kind, :name, :owner_ids, :requested_by_id, :state, :story_type
    
  def owned_by_id=(owned_by_id)
    warn '[DEPRECATION] Attribute owned_by_id is deprecated in Pivotal Tracker API V5'
    @owned_by_id = owned_by_id
  end

  def owned_by_id
    warn '[DEPRECATION] Attribute owned_by_id is deprecated in Pivotal Tracker API V5'
    @owned_by_id
  end
end
