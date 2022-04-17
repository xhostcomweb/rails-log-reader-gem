RSpec.describe LogReader::AggregatorResult do 
  let(:result) { described_class[grouped_entries] } 
  let(:grouped_entries) {
      { |variable| variable.path }.each_with_object(AggregatorResult.new) do |(path, entries), collection|
        collection[path] ||= Accumulator.new
        collection[path].add(entries)
    end 
  }

end