# frozen_string_literal: true

module LogReader
   class Aggregator
      attr_accessor :total, :unique, :ips

      def initialize(entries) 
        @entries = entries
      end

      def group 

      end
   end
end