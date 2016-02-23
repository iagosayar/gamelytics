class AddPlatformsToGame < ActiveRecord::Migration
  def change
  	add_column :games, :platform_id, :integer
  end
end