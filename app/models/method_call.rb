class MethodCall < ActiveRecord::Base
  attr_accessible :line, :context
  
  belongs_to :namespace_method
  belongs_to :namespace
  belongs_to :app_file, :through => :namespace
  

end
