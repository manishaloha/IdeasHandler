class AddCommentsToUserideas < ActiveRecord::Migration
  def change
    add_column :userideas, :comment, :text
  end
end
