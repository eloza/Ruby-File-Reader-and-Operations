# reads yml files to the console
require 'yaml'
require_relative 'file_reader'

class YamlReader < FileReader
  def read
    puts "\nReading file using YML file reader:\n\n"
    puts contents = YAML.load_file(@file)
  end
end