module LogReader
    class AggregatorResult < Hash
    def sort_by_total
     # sort_by { |_, views| -views.total }
    end

    def sort_by_unique
     # sort_by { |_, views| -views.unique }
    end
  end
end