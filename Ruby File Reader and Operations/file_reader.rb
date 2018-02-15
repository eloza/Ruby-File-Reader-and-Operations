class FileReader
  attr_accessor :file
  
  def initialize(file)
    @file = file
  end
	
  def read
   puts "\nReading file using file reader:\n\n"
   puts contents = File.read(@file)
  end
end