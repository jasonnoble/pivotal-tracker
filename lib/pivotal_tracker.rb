require 'httparty'

class PivotalTracker

end

PivotalTracker.autoload :Client,            'pivotal-tracker/client'
PivotalTracker.autoload :Story,             'pivotal-tracker/story'
PivotalTracker.autoload :Project,           'pivotal-tracker/project'
PivotalTracker.autoload :Account,           'pivotal-tracker/account'
PivotalTracker.autoload :AccountMembership, 'pivotal-tracker/account_membership'
PivotalTracker.autoload :ProjectWorkspace,  'pivotal-tracker/project_workspace'
PivotalTracker.autoload :Resource,          'pivotal-tracker/resource'
PivotalTracker.autoload :JiraIntegration, 'pivotal-tracker/jira_integration'

class PivotalTracker
  include HTTParty

  base_uri 'https://www.pivotaltracker.com/services/v5'

  PermissionDenied = Class.new(Error)
end
