class PivotalTracker::AccountMembership < PivotalTracker::Resource
  attr_accessor :account_id, :admin, :created_at,
                :id, :kind, :owner, :person,
                :person_id, :project_creator, :time_enterer,
                :timekeeper, :updated_at
end
