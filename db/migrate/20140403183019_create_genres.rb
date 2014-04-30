class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.text :description
      t.references :parent, index: true

      t.timestamps
    end
  end
end
