class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :contact_name
      t.text :description
      

      t.timestamps
    end
  end
end