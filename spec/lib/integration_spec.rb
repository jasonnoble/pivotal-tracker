require 'spec_helper'

describe PivotalTracker::Integration do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {
        id: 1, can_import: true, base_url: 'url', is_other: true,
        story_name: 'story_name', name: 'name', active: true, created_at: DateTime.now,
        updated_at: DateTime.now, type: 'type', api_username: 'user',
        api_password: 'password', zendesk_user_email: 'email', zendesk_user_password: 'password',
        view_id: 'id', company: 'company', product: 'product', component: 'component',
        statuses_to_exclude: 'statuses', filter_id: 'id', account: 'account',
        external_api_token: 'token', bin_id: 1, external_product_id: 1, import_api_url: 'url',
        basic_auth_username: 'username', basic_auth_password: 'password', comments_private: true,
        update_comments: true, update_state: false, kind: 'kind'
      }

      integration = PivotalTracker::Integration.new(attributes)

      expect(integration).to be_a PivotalTracker::Integration

      attributes.each do |attribute, value|
        expect(integration.send(attribute)).to eq value
      end
    end
  end
end
