class PivotalTracker::AccountMembership < PivotalTracker::Resource
  attr_accessor :account_id, :admin, :created_at,
                :id, :kind, :owner, :person,
                :person_id, :project_creator, :time_enterer,
                :timekeeper, :updated_at

  def self.all(account_id)
    memberships = PivotalTracker::ApiService.all_nested('accounts', account_id, 'memberships')
    memberships.map { |membership| new(membership) }
  end

  def self.create(membership_attributes, account_id)
    new_membership = PivotalTracker::ApiService.create_account_membership(membership_attributes, account_id)
    new(new_membership)
  end
end
