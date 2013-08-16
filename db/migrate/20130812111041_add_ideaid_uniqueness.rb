class AddIdeaidUniqueness < ActiveRecord::Migration
  def change
  	add_index :userideas, [:idea_id, :initiate, :follow], :unique => true
  end	
end
