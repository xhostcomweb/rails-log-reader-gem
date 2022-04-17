RSpec.describe LogReader::Aggregator do 
  let(:aggregator) { described_class.new(entries) }
  let(:entries) {
       [
        LogReader::Entry.new("home", "8.3.4.3"),
         LogReader::Entry.new("about", "4.3.4.3"),
         LogReader::Entry.new("home", "8.3.4.3"),
         LogReader::Entry.new("about", "4.3.4.3"),
        LogReader::Entry.new("home", "8.3.4.3")
       ] 
    }
  let(:entry1) { LogReader::Entry.new("home", "
