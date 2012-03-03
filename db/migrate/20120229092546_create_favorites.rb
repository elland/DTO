class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :comic
      t.integer :user_id

      t.timestamps
    end
  end
end
