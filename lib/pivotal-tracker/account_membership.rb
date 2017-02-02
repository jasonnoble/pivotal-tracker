class PivotalTracker::AccountMembership < PivotalTracker::Resource
  attr_accessor :account_id, :admin, :created_at,
                :id, :kind, :owner, :person,
                :person_id, :project_creator, :time_enterer,
                :timekeeper, :updated_at

  def self.all(account_id)
    response = PivotalTracker.get("/accounts/#{account_id}/memberships")		
    if response.code == 200		
      response.parsed_response.map do |membership|		
        PivotalTracker::AccountMembership.new(membership)		
      end		
    else		
      raise(PivotalTracker::PermissionDenied, "Only Admins and Owners can see account memberships")		
    end		
  end

  def self.create(membership_attributes, account_id)
    response = PivotalTracker.post("/accounts/#{account_id}/memberships", query: membership_attributes)
    if response.code == 200
      new_account = PivotalTracker::AccountMembership.new(response.parsed_response)
    else
      raise(PivotalTracker::PermissionDenied, "Only Admins and Owners can add account memberships")
    end
  end
end
