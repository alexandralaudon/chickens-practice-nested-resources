class CreateEscapePlans < ActiveRecord::Migration
  def change
    create_table :escape_plans do |t|
      t.string :description
      t.string :first_stop
      t.string :disguise
      t.integer :safe_place_id
    end
  end
end
