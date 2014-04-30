class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.string :state
      t.boolean :closed
      t.references :created_by, index: true

      t.timestamps
    end
  end
end
