class ImageManagement
  def self.get_images(item)
    item.children.select{|i| i.binary? && i.path =~ /_small_thumbnail\.jpg$/ }.map do |child|
      image_path = child.path
      basename = File.basename(image_path, File.extname(image_path))
      next if basename =~ /^documento/

      basename = basename.gsub(/_small_thumbnail/, '')
      big_thumbnail_image_path = File.dirname(image_path) + '/' + basename + "_big_thumbnail.jpg"
      [image_path, big_thumbnail_image_path]
    end.compact
  end

  def self.get_documents(item)
    item.children.select{|i| i.binary? && i.path =~ /_small_thumbnail\.jpg$/ }.map do |child|
      image_path = child.path
      basename = File.basename(image_path, File.extname(image_path))
      next if basename !~ /^documento/

      basename = basename.gsub(/_small_thumbnail/, '')
      big_thumbnail_image_path = File.dirname(image_path) + '/' + basename + "_big_thumbnail.jpg"
      [image_path, big_thumbnail_image_path]
    end.compact
  end

  def self.get_all_pictures(item)
    get_images(item) + get_documents(item)
  end

  def self.get_big_pictures_height(item)
    get_all_pictures(item).map do |path|
      big_path = 'content/' + path[1]
      img = ::MiniMagick::Image.open(big_path)
      img[:height]
    end
  end

end
