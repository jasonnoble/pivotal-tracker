class PivotalTracker::Account < PivotalTracker::Resource
  attr_accessor :created_at, :days_left, :id, :kind,
                :name, :over_the_limit, :plan, :project_ids,
                :status, :updated_at

  def self.find(account_id)
    parsed_response = PivotalTracker::ApiService.find('accounts', account_id)
    new(parsed_response) if parsed_response
  end

  def memberships
    @memberships ||= PivotalTracker::Proxy.new(self, PivotalTracker::AccountMembership)
  end
end
