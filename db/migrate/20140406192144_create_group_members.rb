class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.references :group, index: true
      t.references :person, index: true
      t.integer :position
      t.string :description

      t.timestamps
    end
  end
end
