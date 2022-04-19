# frozen_string_literal: true

require_relative "log_reader/version"
require_relative "log_reader/file_reader" # Reads the file in entire lines (by path and ip)
require_relative "log_reader/entry"       # Use Struct to group the lines by attributes in to hash object of quoted strings, path & IP, to view entry, path, ip, totals, uniques
require_relative "log_reader/tokenizer"   # Map the entries in to an array of line entries
require_relative "log_reader/accumulator" # Count each entry by path related ip, incrementing view count/unique view count by ip
require_relative "log_reader/aggregator"  # Group entries by path, store no of entries for each path
require_relative "log_reader/aggregator_result" # Sort the entries by total & unique views by testing against a predetermined descending or ascending order
require_relative "log_reader/formatter" # Format these split in to entries by total and unique views for output
require_relative "log_reader/parser" # Place the entire above sequence in to single parser file for output to screen, refactor for reuse/extend for different input types

module LogReader
  class Error < StandardError
  end
end
