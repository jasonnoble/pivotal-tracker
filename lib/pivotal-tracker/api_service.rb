require 'httparty'

class PivotalTracker::ApiService
  include HTTParty

  base_uri 'https://www.pivotaltracker.com/services/v5'

  InvalidRequest = Class.new(Error)

  def self.find(collection, id)
    response = get("/#{collection}/#{id}")
    parsed_data(response)
  end

  def self.create_account_membership(membership_attributes, account_id)
    response = post("/accounts/#{account_id}/memberships", query: membership_attributes)
    parsed_data(response)
  end

  def self.all(collection)
    response = get("/#{collection}")
    parsed_data(response)
  end

  def self.all_nested(owner_collection, owner_id, target_collection)
    response = get("/#{owner_collection}/#{owner_id}/#{target_collection}")
    parsed_data(response)
  end

  def self.get_token(username, password)
    basic_auth username, password
    get('/me')['api_token']
  end

  def self.parsed_data(response)
    return response.parsed_response if success?(response.code)
    raise(InvalidRequest, "Invalid credentials, id number, or resource name.")
  end

  def self.success?(code)
    code == 200
  end
end
