class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :username
      t.string :provider
      t.string :email
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end
