class AddBestScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :best_score, :integer, :null => false, :default => 0
  end
end
