class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.references :locatable, index: true, polymorphic: true
      t.string :md5hash
      t.string :provider
      t.string :precision
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
