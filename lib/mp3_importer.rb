require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filenames = Dir.chdir(@path) do |path|
      Dir.glob("*.mp3")
    end
    filenames
  end

  def import
    files.each do |some_path|
      Song.new_by_filename(some_path)
    end
  end

end
