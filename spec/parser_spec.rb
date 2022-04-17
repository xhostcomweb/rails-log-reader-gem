# frozen_string_literal: true

RSpec.describe LogReader::Parser do
  let(:parser) { described_class.new("somefile") }

  describe "#format" do
    subject { parser.format }

    let(:reader) do
      instance_double(LogReader::FileReader, lines: ["/about 1,1,1,1", "/contact 2.2.2.2"])
    end

    before do
      allow(LogReader::FileReader).to receive(:new).and_return(reader)
    end

    it { is_expected.to include("Entries by total views") }
  end
end
