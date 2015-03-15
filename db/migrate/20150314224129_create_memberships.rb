class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :chicken_id
      t.integer :escape_plan_id
    end
  end
end
