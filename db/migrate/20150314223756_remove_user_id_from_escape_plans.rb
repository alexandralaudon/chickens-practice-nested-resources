class RemoveUserIdFromEscapePlans < ActiveRecord::Migration
  def change
    remove_column :escape_plans, :user_id
    remove_column :chickens, :escape_plan_id 
  end
end
