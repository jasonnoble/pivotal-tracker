class PivotalTracker::Client
  def self.token(username=nil, password = nil)
    if username.nil? || password.nil?
      @token
    else
      self.token = PivotalTracker::ApiService.get_token(username, password)
    end
  end

  def self.token=(token)
    @token = token
    if token.nil?
      PivotalTracker::ApiService.default_options[:headers] && PivotalTracker::ApiService.default_options[:headers].delete("X-TrackerToken")
    else
      PivotalTracker::ApiService.headers "X-TrackerToken" => token
    end
  end
end
