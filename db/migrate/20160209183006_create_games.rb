class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user_id
      t.string :json_game
      t.integer :score
      t.boolean :won

      t.timestamps null: false
    end
  end
end
