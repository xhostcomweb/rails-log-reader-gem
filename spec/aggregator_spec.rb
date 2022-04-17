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
describe "#group" do 
    subject(:group) { aggregator.group }
   # it "should return a hash" do 
      #  expect(group).to be_a(Hash)
    #end
    #it "should return a hash with 2 keys" do 
       # expect(group.keys.size).to eq(2)
    # end 
    it "group entries by their path" do
      expect(group.keys).to match_array(["/about", "home"])
    end
end
end
