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
      let(:project_id) { ENV['PIVOTAL_PROJECT_ID'].to_i }

      it "is a project" do
        expect(project).to be_a(PivotalTracker::Project)
      end

      it "has the right id" do
        expect(project.id).to eq(project_id.to_i)
      end
    end

    context "with an invalid project id" do
      let(:project_id) { 123456789123456789 }

      it "returns an error" do
        expect { project }.to raise_error PivotalTracker::ApiService::InvalidRequest
      end
    end
  end

  describe ".stories.all" do
    let(:project) { subject.find(ENV['PROJECT_ID']) }

    it "returns an array of stories" do
      stories = project.stories.all
      expect(stories).to be_an(Array)
      stories.each do |story|
        expect(story).to be_a(PivotalTracker::Story)
      end
    end
  end
end
