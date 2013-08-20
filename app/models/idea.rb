class Idea < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :tag_name, :presence => true
  
  attr_accessible :description, :name, :tag_name
  has_many :userideass
 

  include Tire::Model::Search
  include Tire::Model::Callbacks

  
  def self.seac querystring
      s = Tire.search 'ideas/idea' do
       query do
        string 'name:'+  querystring + '*'
      end
     end
    return s
  end  

  def self.seac_by_tech querystring
      s = Tire.search 'ideas/idea' do
       query do
        string 'tag_name:'+  querystring
      end
     end
    return s
  end  
end
