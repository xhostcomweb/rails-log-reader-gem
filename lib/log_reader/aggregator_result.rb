module LogReader
    class AggregatorResult < Hash
      def sort_by_total_views 
        sort_by { |_, views| -views.total }.reverse
       end 

      def sort_by_unique_views
        sort_by { |_, views| -views.unique }.reverse
      end
    end    
end
