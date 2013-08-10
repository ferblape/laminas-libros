require 'rubygems'

require 'bundler'
Bundler.require

namespace :images do
  desc 'Create thumbnails of a maximum width of 1024'
  task :create_big_thubmnails do
    width = 1024

    Dir.glob('content/**/*.jpg').each do |image_path|
      next if image_path.include?('/home.jpg') ||
              image_path =~ /_big_thumbnail\.jpg$/ ||
              image_path.include?('/home/')

      img = ::MiniMagick::Image.open(image_path)
      img.resize "#{width}x"
      img.strip

      base_name = File.basename(image_path, File.extname(image_path))
      destination_path = File.dirname(image_path) + '/' + base_name + "_big_thumbnail.jpg"

      img.write(destination_path)
      putc '.'
    end
  end

  desc 'Create front images'
  task :create_front_images do
    %W{ laminas libros }.each do |type|
      width = 800
      height = 400

      Dir.glob("content/#{type}/**/*_big_thumbnail.jpg").group_by{|p| p.split('/')[2] }.each do |dir, files|
        image_path = files.select{|f| File.basename(f) !~ /^document/ }.sample

        img = ::MiniMagick::Image.open(image_path)
        img.combine_options do |cmd|
          cmd.thumbnail "#{width}x#{height}^"
          cmd.background "rgba(255, 255, 255, 0.0)"
          cmd.gravity "Center"
          cmd.extent "#{width}x#{height}"
        end

        base_name = File.basename(image_path, File.extname(image_path))
        destination_path = File.dirname(image_path) + '/front.jpg'

        img.write(destination_path)
        putc '.'
      end
    end
  end
end
