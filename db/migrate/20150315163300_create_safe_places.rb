class CreateSafePlaces < ActiveRecord::Migration
  def change
    create_table :safe_places do |t|
      t.string :name
      t.string :location
    end
  end
end
