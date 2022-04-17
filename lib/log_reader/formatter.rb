# frozen_string_literal: true

module LogReader
  class Formatter
    def initialize(aggregator_result)
      @aggregator_result = aggregator_result
    end

    def format
   <<-EOF
      Entries by total views: 
      #{@aggregator_result.total_views} 
      EOF
    end 
    
    private 

    def total_views
      @aggregator_result.sort_by_total_views.map do |path, accumulator|
        "#{path} #{accumulator.total} visits"
      end.join("\n")
    end
  end
end
