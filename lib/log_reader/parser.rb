# frozen_string_literal: true

module LogReader
  class Parser
    def initialize(input, options = {})
      @input = input
      @formatter = options[:formatter] || Formatter
      @reader = options[:reader] || FileReader
      @tokenizer = options[:tokenizer] || Tokenizer
    end

    def format
      @formatter.new(aggregated_data).format
    end

    private

    def read_data
      @reader.new(@input).lines
    end

    def tokenized_data
      @tokenizer.new(read_data).entries
    end

    def aggregated_data
      Aggregator.new(tokenized_data).group
    end
  end
end
