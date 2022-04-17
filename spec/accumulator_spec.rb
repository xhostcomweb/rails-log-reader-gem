# frozen_string_literal: true

RSpec.describe LogReader::Accumulator do
  let(:accumulator) { described_class.new }

  describe "#add" do
    subject(:add_entry) { accumulator.add(entry) }
    let(:entry) { LogReader::Entry.new("home", "102.38.137.231") }

    it 'should "increments total views"' do
      expect { add_entry }.to change { accumulator.total }.by(1)
    end

    it 'should "increments unique views"' do
      expect { add_entry }.to change { accumulator.unique }.by(1)
    end

    context "with existing entry ip" do
      before do
        accumulator.ips["102.38.137.231"] = true
      end

      it "should not change unique views" do
        expect { add_entry }.to_not change { accumulator.unique }
      end
    end
  end
end
