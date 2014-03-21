module Paperclip
  class Watermark < Processor

  class InstanceNotGiven < ArgumentError;
  end

  def initialize(file, options = {},attachment = nil)
    super
    @file = file
    @current_format = File.extname(@file.path)
    @basename = File.basename(@file.path, @current_format)
    # PAWIEN: use default value only if option is not specified
    @watermark = options[:watermark_path] || Rails.root.join('public/images/watermark.png')
    @current_geometry = Geometry.from_file file # This is pretty slow
    @watermark_geometry = watermark_dimensions
  end

  def watermark_dimensions
    return @watermark_dimensions if @watermark_dimensions
    @watermark_dimensions = Geometry.from_file @watermark
  end

  def make
    dst = Tempfile.new([@basename, @format].compact.join("."))
    dst.binmode

    begin
      # PAWIEN: change original "stringy" approach to arrayish approach
      # inspired by the thumbnail processor
      options = [
        "-gravity",
        "SouthEast",
        "#{@watermark}",
        "-extract",
        "#{if @current_geometry.width.to_i>@current_geometry.height.to_i then @current_geometry.height.to_i else @current_geometry.width.to_i end}x#{@current_geometry.height.to_i}",
        File.expand_path(@file.path),
        File.expand_path(dst.path)
      ].flatten.compact.join(" ").strip.squeeze(" ")

      success = Paperclip.run("composite", options)
    rescue PaperclipCommandLineError
      raise PaperclipError, "There was an error processing the watermark for #{@basename}" if @whiny_thumbnails
    end
    dst
  end

  end
end