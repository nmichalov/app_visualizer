class AppFile < ActiveRecord::Base
  attr_accessible :name

  belongs_to :app_directory_node

  has_many :namespaces
  has_many :namespace_methods, :through => :namespaces
  has_many :method_calls, :through => :namespaces
end
