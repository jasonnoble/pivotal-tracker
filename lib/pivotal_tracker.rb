require 'httparty'

class PivotalTracker

end

PivotalTracker.autoload :Client,            'pivotal-tracker/client'
PivotalTracker.autoload :Story,             'pivotal-tracker/story'
PivotalTracker.autoload :Project,           'pivotal-tracker/project'
PivotalTracker.autoload :Account,           'pivotal-tracker/account'
PivotalTracker.autoload :AccountMembership, 'pivotal-tracker/account_membership'

class PivotalTracker
  include HTTParty

  base_uri 'https://www.pivotaltracker.com/services/v5'

  PermissionDenied = Class.new(Error)
end
