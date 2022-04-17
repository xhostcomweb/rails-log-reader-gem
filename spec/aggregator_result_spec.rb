RSpec.describe LogReader::AggregatorResult do 
  let(:aggregator_result) { described_class.new }
  let(:entries) {
       [
      LogReader::Entry.new("/about", "


end