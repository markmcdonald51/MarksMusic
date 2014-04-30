class CreateGroupVenues < ActiveRecord::Migration
  def change
    create_table :group_venues do |t|
      t.references :venue, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
