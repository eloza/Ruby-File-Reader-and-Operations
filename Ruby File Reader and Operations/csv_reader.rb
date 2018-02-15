# Reads csv files to the console
require 'csv'
require_relative 'file_reader'

class CsvReader < FileReader

  def read
    puts
    puts "Reading in a csv file:"
    puts contents = CSV.read(@file)
  end
end