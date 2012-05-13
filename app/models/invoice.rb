class Invoice
  include Mongoid::Document
  include Mongoid::Timestamps
  field :fee, :type => Float
  field :paid, :type => Boolean
  
  belongs_to :user
  belongs_to :campaign
end
