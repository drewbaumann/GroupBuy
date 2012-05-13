class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, :type => String
  field :description, :type => String
  
  embedded_in :campaign
  embeds_many :pricings
end
