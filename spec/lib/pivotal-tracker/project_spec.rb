require "spec_helper"

describe PivotalTracker::Project do
  # We will be testing the class, not the instance
  subject { PivotalTracker::Project }

  before do
    set_token
    VCR.insert_cassette 'project', :record => :new_episodes
  end
  after do
    VCR.eject_cassette
  end

  describe "#all" do
    it "returns all projects" do
      expect(subject.all).to be_an(Array)
    end

    it "is a project" do
      subject.all.each do |project|
        expect(project).to be_a(PivotalTracker::Project)
      end
    end
  end

  describe "#find" do
    let(:project) { subject.find(project_id) }
    context "with a valid project id" do
      let(:project_id) { 481145 }

      it "is a project" do
        expect(project).to be_a(PivotalTracker::Project)
      end

      it "has the right id" do
        expect(project.id).to eq(project_id)
      end
    end

    context "with an invalid project id" do
      let(:project_id) { 123456789123456789 }

      it "returns nil" do
        expect(project).to be_nil
      end
    end
  end

  describe ".stories" do
    let(:project) { subject.find(481145) }

    it "returns an array of stories" do
      stories = project.stories
      expect(stories).to be_an(Array)
      stories.each do |story|
        expect(story).to be_a(PivotalTracker::Story)
      end
    end
  end
end