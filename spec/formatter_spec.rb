RSpec.describe LogReader::Formatter do
  let(:formatter) { described_class.new(aggregator_result) } 
  let(:aggregator_result) { 
    LogReader::AggregatorResult[
      "/about" => instance_double(LogReader::Accumulator, unique: 5, total: 100),
      "/home" => instance_double(LogReader::Accumulator, unique: 10, total: 25),
      "/contact" => instance_double(LogReader::Accumulator, unique: 2, total: 140)
    ]
   } 
   
   describe "#format" do 
   subject { formatter.format} 

   let(:expected_output) {
<<-EOF 
        Entries by total views:
        /contact 140 visits
        /about 100 visits
        /home 25 visits

        Entries by unique views:
        /home 10 unique visits
        /about 5 unique visits
        /contact 2 unique visits
    EOF
   } 

   it { is_expected.to eql(expected_output) }
end 
end
