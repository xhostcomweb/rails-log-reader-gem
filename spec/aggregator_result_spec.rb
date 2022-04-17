RSpec.describe LogReader::AggregatorResult do 
  let(:result) { described_class[grouped_entries] } 
  let(:grouped_entries) {
      { 
          "/about" => accumulator1,
          "/home" => accumulator2,
          "/contact" => accumulator3
      }
 }
let(:accumulator1) { instance_double(LogReader::Accumulator, unique: 5, total: 5) } 
let(:accumulator2) { instance_double(LogReader::Accumulator, unique: 10, total: 25) } 
let(:accumulator3) { instance_double(LogReader::Accumulator, unique: 2, total: 150) } 

describe "~sort_by_total_views" do 
  subject { result.sort_by_total_views } 

  let(:expected_sorted_entries) { 
        [
            
          "/about" => accumulator1,
          "/home" => accumulator2,
          "/contact" => accumulator3
        ]
    }
end