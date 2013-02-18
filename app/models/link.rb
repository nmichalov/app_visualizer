class Link < ActiveRecord::Base
  attr_accessible :origin_view_file_id, :target_view_file_id
end
