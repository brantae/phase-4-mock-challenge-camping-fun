class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.integer :camper_id
      t.integer :activity_id
      t.integer :time
      t.index ["camper_id"], name: "index_signups_on_camper_id"
      t.index ["activity_id"], name: "index_signups_on_activity_id"

      t.timestamps
    end
  end
end
