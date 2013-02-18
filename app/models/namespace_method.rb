class NamespaceMethod < ActiveRecord::Base
  attr_accessible :name

  belongs_to :namespace
  
  has_many :method_calls
end
