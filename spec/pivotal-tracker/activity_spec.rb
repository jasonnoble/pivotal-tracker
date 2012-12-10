require 'spec_helper'

describe PivotalTracker::Activity do

  context "without a specified project" do
    #let(:activities) {
    #  activities = ''
    #  VCR.use_cassette('Activity.all') do
    #    activities = PivotalTracker::Activity.all
    #  end
    #  activities
    #}
    it "should return an array of activities" do
      activities = PivotalTracker::Activity.all
      activities.should be_a(Array)
      activities.each do |activity|

        activity.should be_a(PivotalTracker::Activity)
      end
    end
  end

  #context "with a specified project" do
  #  it "should return an array of activities" do
  #    VCR.use_cassette('Project.find_project_activites') do
  #      project = PivotalTracker::Project.find(rspec_project_id)
  #      project.activities.all.should be_a(Array)
  #      project.activities.all.each do |activity|
  #        activity.should be_a(PivotalTracker::Activity)
  #        activity.project_id.should == rspec_project_id
  #      end
  #    end
  #  end
  #end
  #
  #context "with a specified occurred since date filter" do
  #  it "should correctly url encode the occurred since date filter in the API call" do
  #    VCR.use_cassette('Activity.all_with_filters') do
  #      PivotalTracker::Activity.all nil, :limit => 100, :occurred_since_date => DateTime.parse("2010/7/29 19:13:00 UTC")
  #    end
  #  end
  #end
  #
end
