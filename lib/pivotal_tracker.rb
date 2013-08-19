require 'httparty'

class PivotalTracker

end

require 'pivotal-tracker/client'
require 'pivotal-tracker/story'
require 'pivotal-tracker/project'

class PivotalTracker
  include HTTParty

  base_uri 'https://www.pivotaltracker.com/services/v5'
end