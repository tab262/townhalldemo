ActiveAdmin.register Event do

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

  permit_params :event_type,:moc_id,:date,:time,:time_zone,
    :location,:street_address,:state,:zip,:notes

  index do
    column "Member" do |e|
      e.moc.name
    end
    column :event_type
    column :date
    column :time
    column :time_zone
    column :location
    column :street_address
    column :state
    column "District" do |e|
      e.moc.district
    end
    column :zip
    column :notes
    actions
  end
end
