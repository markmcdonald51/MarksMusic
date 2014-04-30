class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.decimal :addmission_charge
      t.datetime :started_at, index: true
      t.datetime :expired_at, index: true
      t.references :group, index: true
      t.references :venue, index: true
      t.text :schedule

      t.timestamps
    end
  end
end
