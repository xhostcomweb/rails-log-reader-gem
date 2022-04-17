RSpec.describe LogReader::Parser do
  let(:parser) { described_class.new("some/file") }

  describe "#format" do
    subject { parser.format } 

    it "returns a hash" do 
      expect(subject).to be_a(Hash)
    end
  end
end
