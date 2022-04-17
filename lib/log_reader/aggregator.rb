# frozen_string_literal: true

module LogReader
   class Aggregator
      attr_accessor :total, :unique, :ips

      def initialize(entries) 
        @entries = entries
      end

      def group 
         @entries.each_with_object({}) do |entry, collection|
            collection[entry.path] ||= []
           # collection[entry.path] << entry
         end
      end
   end
end