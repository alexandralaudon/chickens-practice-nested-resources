class AddEscapePlanIdToChickens < ActiveRecord::Migration
  def change
    add_column :chickens, :escape_plan_id, :integer
  end
end
