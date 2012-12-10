require 'spec_helper'

describe PivotalTracker::Project do
  let(:all_projects) {
    #projects = ''
    #VCR.use_cassette('Project.all') do
    #  projects = PivotalTracker::Project.all
    #end
    #projects
    PivotalTracker::Project.all
  }
  let(:project) {
    #project = ''
    #VCR.use_cassette('Project.find') do
    #  project = PivotalTracker::Project.find(rspec_project_id)
    #end
    #project
    PivotalTracker::Project.find(all_projects.first.id)
  }

  context ".all" do
    it "should return an array of available projects" do
      PivotalTracker::Project.all.should be_a(Array)
    end

    it "should be an array of project instances" do
      PivotalTracker::Project.all.each do |project|
        project.should be_a(PivotalTracker::Project)
      end
    end        
  end

  context ".find" do
    it "should be an instance of Project" do
      project.should be_a(PivotalTracker::Project)
    end

    it "should have a use_https attribute" do
      project.respond_to?(:use_https).should be_true
    end

    it "should have false for use_https" do
      project.use_https.should be_false
    end
    
    it "should have first_iteration_start_time attribute" do
      project.respond_to?(:first_iteration_start_time).should be_true
    end
     
    it "should have current_iteration_number attribute" do  
      project.respond_to?(:current_iteration_number).should be_true
    end
  end

  context ".stories" do
    it "should have a stories association" do
      project.respond_to?(:stories).should be_true
    end
  end

  context ".memberships" do
    it "should have a memberships association" do
      project.respond_to?(:memberships).should be_true
    end
  end

  #context ".create" do
  #  pending
  #  let(:new_project_name) { "My new tracker project" }
  #  let(:new_project) {
  #    new_project = ''
  #    VCR.use_cassette('Project.create_project') do
  #      new_project = PivotalTracker::Project.new(:name => new_project_name).create
  #    end
  #    new_project
  #  }
  #
  #  it "should return the created project" do
  #    new_project.errors.should be_empty
  #    new_project.should be_a(PivotalTracker::Project)
  #    new_project.name.should == new_project_name
  #  end
  #
  #  context "on failure" do
  #    let(:create_project) {
  #      VCR.use_cassette('Project.create_project_error') do
  #        new_project.create
  #      end
  #    }
  #    it "should not raise an exception" do
  #      expect { create_project }.to_not raise_error(Exception)
  #    end
  #
  #    it "should report errors encountered" do
  #      create_project
  #      new_project.errors.messages.should include("The project name you entered is already taken.")
  #    end
  #  end
  #end
end
