class AddTagsToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :tag_name, :string
  end
end
