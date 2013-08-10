class ImageManagement
  def self.get_images(item)
    require 'debugger'
    item.children.select{|i| i.binary? && i.path =~ /_small_thumbnail\.jpg$/ }.map do |child|
      image_path = child.path
      basename = File.basename(image_path)
      next if basename =~ /^documento/

      big_thumbnail_image_path = image_path
      [image_path, big_thumbnail_image_path]
    end.compact
  end

  def self.get_documents(item)
    item.children.select{|i| i.binary? && i.path =~ /_small_thumbnail\.jpg$/ }.map do |child|
      image_path = child.path
      basename = File.basename(image_path)
      next if basename !~ /^documento/

      big_thumbnail_image_path = image_path
      [image_path, big_thumbnail_image_path]
    end.compact
  end

end
