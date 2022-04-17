# frozen_string_literal: true

RSpec.describe LogReader::Formatter do
  let(:formatter) { described_class.new(aggregator_result) }
  let(:aggregator_result) do
    LogReader::AggregatorResult[
      "/about" => instance_double(LogReader::Accumulator, unique: 5, total: 100),
      "/home" => instance_double(LogReader::Accumulator, unique: 10, total: 25),
      "/contact" => instance_double(LogReader::Accumulator, unique: 2, total: 140)
    ]
  end

  describe "#format" do
    subject { formatter.format }

    let(:expected_output) do
      <<-EOF
        Entries by total views:
        /contact 140 views
        /about 100 views
        /home 25 views

        Entries by unique views:
        /home 10 unique views
        /about 5 unique views
        /contact 2 unique views
      EOF
    end

    it { is_expected.to eql(expected_output) }
  end
end
