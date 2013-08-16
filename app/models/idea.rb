class Idea < ActiveRecord::Base
  
  
  attr_accessible :description, :name
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


end
