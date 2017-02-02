require 'simplecov'
SimpleCov.start

require 'vcr'
require 'pivotal_tracker'
require 'dotenv/load'
require 'pry'
require 'faker'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  config.before(:suite) do
    env_keys = File.readlines('.env.example').map { |var| var.split('=').first }.reject { |key| ENV[key] }
    raise(ArgumentError, "One or more of your environment variables aren't setup: #{env_keys.join(',')}\nPlease see Contributing.md for details") if env_keys.any?
  end
end

# VCR Config
VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/pivotal_tracker_cassettes'
  c.hook_into :webmock

  c.filter_sensitive_data('<PIVOTAL_API_TOKEN>') do |interaction|
    ENV['PIVOTAL_TOKEN_ID']
  end
  c.filter_sensitive_data('<PIVOTAL_LOGIN>') do |interaction|
    ENV['PIVOTAL_EMAIL'].gsub(/\@/, '%40')
  end
  c.filter_sensitive_data('<PIVOTAL_EMAIL_ADDRESS>') do |interaction|
    ENV['PIVOTAL_EMAIL']
  end
  c.filter_sensitive_data('<PIVOTAL_USER_NAME>') do |interaction|
    ENV['PIVOTAL_USER_NAME']
  end
  c.filter_sensitive_data('<PIVOTAL_PASSWORD>') do |interaction|
    CGI.escape(ENV['PIVOTAL_USER_PASSWORD'])
  end
  c.filter_sensitive_data('<PROJECT_ID>') do |interaction|
    ENV['PROJECT_ID']
  end
end

def capture_output
  @stdout = $stdout
  @stderr = $stdout
end

def set_token
  PivotalTracker::Client.token = ENV['PIVOTAL_TOKEN_ID']
end
