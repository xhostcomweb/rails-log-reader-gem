# frozen_string_literal: true

RSpec.describe LogReader::Tokenizer do
  let(:tokenizer) { described_class.new(lines) }
  let(:lines) do
    [
      "/about 205.253.29.102",
      "/products 233.57.149.50"
    ]
  end

  describe "#entries" do
    subject { tokenizer.entries }

    let(:expected_entries) do
      [
        LogReader::Entry.new("/about", "205.253.29.102"),
        LogReader::Entry.new("/products", "233.57.149.50")
      ]
    end

    it { is_expected.to eql(expected_entries) }
  end
end
