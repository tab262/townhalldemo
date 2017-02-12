class AddAdditionalFieldsToMoc < ActiveRecord::Migration
  def change
    add_column :mocs, :moc_type, :string
    add_column :mocs, :address, :string
    add_column :mocs, :fax, :string
    add_column :mocs, :contact_site, :string
    add_column :mocs, :rss_url, :string
  end
end
