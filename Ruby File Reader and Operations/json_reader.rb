# Reads json files to the console
require 'json'
require_relative 'file_reader'

class JsonReader < FileReader
  def read
    puts "\nReading file using JSON file reader:\n\n"

    json_file = File.read(@file)
    puts contents = JSON.load(json_file)
  end
end