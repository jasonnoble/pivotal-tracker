class PivotalTracker::Account < PivotalTracker::Resource
  attr_accessor :created_at, :days_left, :id, :kind,
                :name, :over_the_limit, :plan, :project_ids,
                :status, :updated_at

  def self.find(account_id)
    raw_account = PivotalTracker::ApiService.find('accounts', account_id)
    new(raw_account)
  end

  def memberships
    @memberships ||= PivotalTracker::Proxy.new(self, PivotalTracker::AccountMembership)
  end
end
