require './lib/pivotal-tracker/resource'

class PivotalTracker::Account < PivotalTracker::Resource
  attr_accessor :created_at, :days_left, :id, :kind,
                :name, :over_the_limit, :plan, :project_ids,
                :status, :updated_at

  def self.find(account_id)
    response = PivotalTracker.get("/accounts/#{account_id}")
    if response.code == 200
      parsed_response = response.parsed_response
      PivotalTracker::Account.new(parsed_response)
    end
  end

  def memberships
    response = PivotalTracker.get("/accounts/#{self.id}/memberships")
    if response.code == 200
      response.parsed_response.map do |membership|
        PivotalTracker::AccountMembership.new(membership)
      end
    else
      raise(PivotalTracker::PermissionDenied, "Only Admins and Owners can see account memberships")
    end
  end
end
