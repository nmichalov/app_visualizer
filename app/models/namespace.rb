class Namespace < ActiveRecord::Base
  attr_accessible :space

  belongs_to :superspace, :class_name => "Namespace"

  has_many :namespace_methods
  has_many :method_calls
  has_many :subspaces, :class_name => "Namespace",
    :foreign_key => "superspace_id"
end
