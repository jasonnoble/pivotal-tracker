require 'spec_helper'

describe PivotalTracker::Task do
  before(:each) do
    @project = PivotalTracker::Project.all.first
    @project.stories.create(:name => 'My Story', :story_type => 'feature')
    @story = @project.stories.all.last
    @task = @story.tasks.all.first
    @task ||= @story.tasks.create(:description => 'Some Task')
  end

  context ".all" do
    it "should return an array of tasks" do
      @story.tasks.all.should be_a(Array)
      @story.tasks.all.each do |task|
        task.should be_a(PivotalTracker::Task)
      end
    end
  end

  context ".find" do
    it "should return a given task" do
      @story.tasks.find(@task.id).should be_a(PivotalTracker::Task)
    end
  end

  context ".create" do
    it "should return the created task" do
      @story.tasks.create(:description => 'Test task')
    end
  end

  context '.update' do
    it "should return the updated task" do
      @story.tasks.find(@task.id).update(:description => 'Test task').description.should == 'Test task'
    end
  end
end
