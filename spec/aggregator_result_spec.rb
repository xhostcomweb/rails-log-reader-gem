# frozen_string_literal: true

RSpec.describe LogReader::AggregatorResult do
  let(:result) { described_class[grouped_entries] }
  let(:grouped_entries) do
    {
      "/about" => accumulator1,
      "/home" => accumulator2,
      "/contact" => accumulator3
    }
  end
  let(:accumulator1) { instance_double(LogReader::Accumulator, unique: 5, total: 5) }
  let(:accumulator2) { instance_double(LogReader::Accumulator, unique: 10, total: 25) }
  let(:accumulator3) { instance_double(LogReader::Accumulator, unique: 2, total: 150) }

  describe "sort_by_total_views" do
    subject { result.sort_by_total_views }

    let(:expected_sorted_entries) do
      [
        ["/contact", accumulator3],
        ["/home", accumulator2],
        ["/about", accumulator1]

      ]
    end

    it { is_expected.to eq(expected_sorted_entries) }
  end

  describe "sort_by_unique_views" do
    subject { result.sort_by_unique_views }

    let(:expected_sorted_entries) do
      [
        ["/home", accumulator2],
        ["/about", accumulator1],
        ["/contact", accumulator3]
      ]
    end

    it { is_expected.to eql(expected_sorted_entries) }
  end
end
