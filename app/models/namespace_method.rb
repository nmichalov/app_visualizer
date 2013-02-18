class NamespaceMethod < ActiveRecord::Base
  attr_accessible :name

  belongs_to :namespace_id
  belongs_to :app_file_id
end
