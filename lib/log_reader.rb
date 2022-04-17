# frozen_string_literal: true

require_relative "log_reader/version"
require_relative "log_reader/file_reader"
require_relative "log_reader/entry"
require_relative "log_reader/tokenizer"
require_relative "log_reader/accumulator"
require_relative "log_reader/aggregator" 
# require_relative "log_reader/aggregator_result"

module LogReader
  class Error < StandardError; end
  # Your code goes here...
end
