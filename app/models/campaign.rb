class Campaign
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, :type => String
  field :description, :type => String
  field :owner_id, :type => String
  field :end_date, :type => Time
  field :status, :type => String
  
  has_many :users
  has_many :invoices
  embeds_many :items
end
