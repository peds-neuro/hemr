ActiveAdmin.register Document do
  permit_params :source_author, :source_institution, :department, :type, :title, :body, :structured_data, :default_view, :source_file_filename, :source_file_content_type, :source_file_file_size, :source_file_updated_at

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
