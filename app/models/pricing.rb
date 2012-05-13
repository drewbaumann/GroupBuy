class Pricing
  include Mongoid::Document
  include Mongoid::Timestamps
  field :object_count, :type => Integer
  field :price, :type => Float
  
  embedded_in :item
end
