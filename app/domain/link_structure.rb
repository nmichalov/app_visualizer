require 'nokogiri'
require 'erb'

class LinkStructure
  
  def get_links(view_directory)
    Dir.chdir(view_directory)
    Dir[]
  end

  def process_views
    Dir['**/*.html.erb'].each do |view|
    end
  end

end