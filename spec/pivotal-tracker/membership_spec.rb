require 'spec_helper'

describe PivotalTracker::Project do
  before do
    @project = PivotalTracker::Project.all.detect{|project| project.name == 'Pivotal Tracker API Gem'}
    @membership_id = @project.memberships.all.first.id
  end

  context ".all" do
    it "should return an array of memberships" do
      @project.memberships.all.should be_a(Array)
      @project.memberships.all.first.should be_a(PivotalTracker::Membership)
    end
  end

  context ".find" do
    it "should return the given membership" do
      @project.memberships.find(@membership_id).should be_a(PivotalTracker::Membership)
    end
  end
end
