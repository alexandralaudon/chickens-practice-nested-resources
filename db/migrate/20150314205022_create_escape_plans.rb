class CreateEscapePlans < ActiveRecord::Migration
  def change
    create_table :escape_plans do |t|
      t.string :description
      t.string :first_stop
      t.string :disguise
      t.integer :safe_place_id
      t.integer :user_id
      t.integer :chicken_id
      t.timestamps
    end
  end
end
