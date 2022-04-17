RSpec.describe LogReader::Formatter do
  let(:formatter) { described_class.new(aggregator_result) } 
  let(:aggregator_result) { 
    LogReader::AggregatorResult[
      "/about" => instance_double(LogParser::Accumulator, unique: 5, total: 100),
      "/home" => instance_double(LogParser::Accumulator, unique: 10, total: 25),
      "/contact" => instance_double(LogParser::Accumulator, unique: 2, total: 140)
    ]
   } 
   
   describe "#format" do 
    subject { formatter.format}
end
