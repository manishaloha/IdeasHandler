class Userideas < ActiveRecord::Base
  attr_accessible :follow, :idea_id, :initiate, :user_id
  belongs_to :user
  belongs_to :idea
end
