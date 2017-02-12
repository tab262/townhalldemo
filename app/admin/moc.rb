ActiveAdmin.register Moc do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :party, :state, :district, :url, :email, :phone

  index do
    id_column
    column :name
    column :party
    column :district
    column :url
    column :email
    column :phone
    column :moc_type
    column :address
    column :fax
    column :contact_site
    column :rss_url
    actions
  end
end
