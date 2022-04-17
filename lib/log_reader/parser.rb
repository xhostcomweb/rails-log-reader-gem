# frozen_string_literal: true

module LogReader
  class Parser
    def initialize(file_path)
      @file_path = file_path
    end

    def format
      Formatter.new(aggregated_data).format
    end 
    
    private 

    def read_data 
      FileReader.new(@file_path).lines
    end 

    def tokenized_data 
      Tokenizer.new(read_data).entries
    end 

    def aggregated_data 
      Aggregator.new(tokenized_data).group
    end
  end
end
