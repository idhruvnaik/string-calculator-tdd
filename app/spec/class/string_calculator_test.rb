require "./string_calculator"

RSpec.describe StringCalculator do
  let(:object) { StringCalculator.new }

  describe ".add" do
    it "returns '0' for empty string" do
      expect(object.add("")).to eq(0)
    end

    it "returning the number given" do
      expect(object.add("88")).to eq(88)
    end

    it "returning the sum of multiple comma separated numbers" do
      expect(object.add("1,4,5")).to eq(10)
    end

    # !! Invalid test input case
    it "failing test case for improper imputs" do
      expect { object.add("1,,2") }.to raise_error(StandardError)
    end
  end
end
