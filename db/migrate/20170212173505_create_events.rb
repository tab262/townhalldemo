class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_type
      t.integer :moc_id
      t.string :date
      t.string :time
      t.string :time_zone
      t.string :location
      t.string :street_address
      t.string :state
      t.string :zip
      t.string :notes

      t.timestamps null: false
    end

    add_index :events, :moc_id
  end
end
