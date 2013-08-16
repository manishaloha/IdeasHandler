class CreateUserideas < ActiveRecord::Migration
  def change
    create_table :userideas do |t|
      t.integer :idea_id
      t.integer :user_id
      t.boolean :initiate
      t.boolean :follow

      t.timestamps
    end
  end
end
