class CreateGroupGenres < ActiveRecord::Migration
  def change
    create_table :group_genres do |t|
      t.references :group, index: true
      t.references :genre, index: true

      t.timestamps
    end
  end
end
