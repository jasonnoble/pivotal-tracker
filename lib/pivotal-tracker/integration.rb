class PivotalTracker::Integration < PivotalTracker::Resource
  
  attr_accessor :account, :active, :api_username, :api_password, :base_url,
                :basic_auth_username, :basic_auth_password, :bin_id,
                :can_import, :comments_private, :company, :component,
                :created_at, :external_api_token, :external_product_id, :id,
                :import_api_url, :is_other, :filter_id, :kind, :name,
                :project_id, :story_name, :statuses_to_exclude, :type,
                :updated_at, :update_comments, :update_state, :view_id,
                :product, :zendesk_user_email, :zendesk_user_password

end
