class AppDirectoryNode < ActiveRecord::Base
  attr_accessible :name

  belongs_to :parent_directory_node, :class_name => "AppDirectoryNode"

  has_many :app_files
  has_many :child_directory_nodes, :class_name => "AppDirectoryNode",
    :foreign_key => "parent_directory_node_id"

end
