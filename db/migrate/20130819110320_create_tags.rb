class CreateTags < ActiveRecord::Migration
  def change
    create_table :tagging do |t|
      t.string :name

      t.timestamps
    end
  end
end
