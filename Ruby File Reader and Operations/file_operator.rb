# Driver for file ops in this directory
# Reads and displays various file types to the console
# USAGE: $ ruby file_operator sample.json
require_relative 'file_reader'
require_relative 'csv_reader'
require_relative 'yaml_reader'
require_relative 'json_reader'

FILENAME = ARGV[0]

def file_extension(filename)
  filename.split('.').last 
end

def reader_class
  ext = file_extension(FILENAME)

  return CsvReader if ext == 'csv'
  return YamlReader if ext == 'yml'
  return JsonReader if ext == 'json'
  FileReader
end

reader_class.new(FILENAME).read