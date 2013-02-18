class MethodCall < ActiveRecord::Base
  attr_accessible :line
  attr_accessible :line_number 

  belongs_to :app_file_id
  belongs_to :namespace_id
  belongs_to :namespace_method_id
end
