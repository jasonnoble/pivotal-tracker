require 'spec_helper'

describe PivotalTracker::FileAttachment do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {id: 1, filename: 'name', created_at: DateTime.now,
        uploader_id: 1, thumbnailable: true, height: 1, width: 1, size: 1,
        download_url: 'download', content_type: 'type', uploaded: true,
        big_url: 'url', thumbnail_url: 'url', kind: 'kind'}
        
      file_attachment = PivotalTracker::FileAttachment.new(attributes)

      expect(file_attachment).to be_a PivotalTracker::FileAttachment

      attributes.each do |attribute, value|
        expect(file_attachment.send(attribute)).to eq value
      end
    end
  end
end
