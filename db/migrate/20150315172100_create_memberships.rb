class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :escape_plan_id
      t.integer :chicken_id
    end
  end
end
