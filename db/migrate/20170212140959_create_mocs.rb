class CreateMocs < ActiveRecord::Migration
  def change
    create_table :mocs do |t|
      t.string :name
      t.string :party
      t.string :state
      t.string :district
      t.string :url
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
