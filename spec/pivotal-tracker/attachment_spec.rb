require 'spec_helper'

describe PivotalTracker::Attachment do

  before do
    @project = PivotalTracker::Project.all.detect{|project| project.name == 'Pivotal Tracker API Gem'}
    @story = @project.stories.all.first
    puts "Uploading attachment to story #{@story.id} on project #{@project.id}"
    if @story.attachments.count == 0
      @story.upload_attachment('tmp/attachment1.txt')
    end
    @story = @project.stories.all.first
  end

  context "always" do
    it "should return an integer id" do
      @story.attachments.first.id.should be_a(Integer)
    end

    it "should return a string for url" do
      @story.attachments.first.url.should be_a(String)
    end

    it "should return a string for filename" do
      @story.attachments.first.filename.should be_a(String)
    end

    it "should return a string for uploaded_by" do
      @story.attachments.first.uploaded_by.should be_a(String)
    end

    it "should return a datetime for uploaded_at" do
      @story.attachments.first.uploaded_at.should be_a(DateTime)
    end
  end

  context "without description" do
    it "should have a blank string for the description" do
      @story.attachments.first.description.should be_a(String)
      @story.attachments.first.description.should be_blank
    end
  end

  context "with description" do
    it "should have a non-blank string for the description" do
      @story.attachments.first.description.should be_a(String)
      @story.attachments.last.description.should_not be_blank
    end
  end

  context "uploading" do

    before do
      @target_story = @project.stories.all.first
    end

    it "should return an attachment object with a pending status" do
      resource = @target_story.upload_attachment(File.dirname(__FILE__) + '/../../LICENSE')
      resource.should be_a(PivotalTracker::Attachment)
      resource.status.should == 'Pending'
    end
  end
end
