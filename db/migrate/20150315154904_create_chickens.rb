class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.string :name
      t.integer :eggs_per_week
      t.timestamps
    end
  end
end
