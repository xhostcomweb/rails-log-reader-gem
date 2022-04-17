module LogReader
  class Parser
    def initialize(file_path)
      @file_path = file_path
    end

    def format

    end 
    
    def tokenized_data 
      @tokenized_data ||= tokenize_data
    end 
    
    private 

    def read_data 
      FileReader.new(@file_path).lines
    end
  end
end
