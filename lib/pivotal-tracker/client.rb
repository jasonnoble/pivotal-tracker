class PivotalTracker::Client
  def self.token(username=nil, password = nil)
    if username.nil? || password.nil?
      @token
    else
      PivotalTracker.basic_auth username, password
      self.token = PivotalTracker.get('/me')['api_token']
    end
  end

  def self.token=(token)
    @token = token
    if token.nil?
      PivotalTracker.default_options[:headers] && PivotalTracker.default_options[:headers].delete("X-TrackerToken")
    else
      PivotalTracker.headers "X-TrackerToken" => token
    end
  end
end