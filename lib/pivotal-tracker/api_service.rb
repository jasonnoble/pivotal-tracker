class PivotalTracker::ApiService
  def self.find(resource, id)
    response = PivotalTracker.get("/#{resource}/#{id}")
    response.parsed_response if success?(response.code)
  end

  def self.account_memberships(account_id)
    response = PivotalTracker.get("/accounts/#{account_id}/memberships")
    if success?(response.code)
      response.parsed_response
    else
      raise(PivotalTracker::PermissionDenied, "Only Admins and Owners can see account memberships")
    end
  end

  def self.create_account_membership(membership_attributes, account_id)
    response = PivotalTracker.post("/accounts/#{account_id}/memberships", query: membership_attributes)
    if success?(response.code)
      response.parsed_response
    else
      raise(PivotalTracker::PermissionDenied, "Only Admins and Owners can add account memberships")
    end
  end

  def self.success?(code)
    code == 200
  end
end
