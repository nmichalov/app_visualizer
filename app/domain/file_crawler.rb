class FileCrawler

  def crawl_directory(base_directory)
    Dir.chdir(target_directory)
    @base_node = AppDirectoryNode.create(:name => base_directory)
    crawl(@base_node)
  end

  def crawl(directory_node)
    Dir.chdir(directory_node.name)  # I should probably change :name to :path
    Dir['*.rb'].each do |app_file|
      AppFile.create(:name => app_file, :app_directory_node_id => directory_node.id)
      scrape_file(app_file)
    end
    Dir['*/'].each do |sub_directory|
      subdirectory_node = AppDirectoryNode.create(:name => base_directory, :app_directory_node_id => directory_node.id)
      crawl(subdirectory_node)
    end
  end

  def scrap_file(app_file)
    File.open(app_file, 'r').each do |line|
      line = line.lstrip()
    #  if line.start_with?('class')
    end
  end

end