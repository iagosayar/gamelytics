class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :summary
      t.string :description
      t.string :developer
      t.date :publishing_date

      t.timestamps null: false
    end
  end
end
