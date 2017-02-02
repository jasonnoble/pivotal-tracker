class PivotalTracker::ApiService
  def self.find(collection, id)
    response = PivotalTracker.get("/#{collection}/#{id}")
    response.parsed_response if success?(response.code)
  end

  def self.create_account_membership(membership_attributes, account_id)
    response = PivotalTracker.post("/accounts/#{account_id}/memberships", query: membership_attributes)
    if success?(response.code)
      response.parsed_response
    else
      raise(PivotalTracker::PermissionDenied, "Only Admins and Owners can add account memberships")
    end
  end

  def self.all(collection)
    PivotalTracker.get("/#{collection}").parsed_response
  end

  def self.all_nested(owner_collection, owner_id, target_collection)
    response = PivotalTracker.get("/#{owner_collection}/#{owner_id}/#{target_collection}")
    if success?(response.code)
      response.parsed_response
    else
      puts response.inspect
    end
  end

  def self.get_token(username, password)
    PivotalTracker.basic_auth username, password
    PivotalTracker.get('/me')['api_token']
  end

  def self.success?(code)
    code == 200
  end
end
