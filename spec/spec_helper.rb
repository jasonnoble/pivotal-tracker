require 'bundler'
require 'fileutils'

Bundler.require(:default, :runtime, :test)
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'pivotal-tracker'
require 'rspec'
require 'rspec/autorun'

RestClient.proxy = "http://localhost:8888/"

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.default_cassette_options = { :serialize_with  => :json }
  c.hook_into :fakeweb
end

RSpec.configure do |config|
  config.fail_fast = true
  config.before :suite do
    PivotalTracker::Client.token = '49cdf1ec87cfe1854cd519c7a828e00a'

    # Check to see if the project already exists
    #VCR.use_cassette('rspec_setup') do
    #  project = PivotalTracker::Project.all.detect{|p| p.name == 'Pivotal Tracker API Gem'}
    #
    #  # If it didn't exist, create it
    #  project ||= PivotalTracker::Project.new(:name => 'Pivotal Tracker API Gem').create
    #
    #  # Need some activities and stories setup
    #  project.stories.create(:name => 'My Story', :story_type => 'feature')
    #end
  end
end