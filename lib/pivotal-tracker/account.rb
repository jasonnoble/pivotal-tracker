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
    @memberships ||= PivotalTracker::Proxy.new(self, PivotalTracker::AccountMembership)
  end		
end
