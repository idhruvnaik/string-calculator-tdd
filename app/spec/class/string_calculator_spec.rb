require "./string_calculator"

RSpec.describe StringCalculator do
  let(:object) { StringCalculator.new }

  describe ".add" do
    # ? Positive flow test cases
    it "returns '0' for empty string" do
      expect(object.add("")).to eq(0)
    end

    it "returning the number given" do
      expect(object.add("88")).to eq(88)
    end

    it "returning the sum of multiple comma separated numbers" do
      expect(object.add("1,4,5")).to eq(10)
    end

    it "returning the sum of single \n separated numbers" do
      expect(object.add("\n4")).to eq(4)
    end

    it "returning the sum of multiple \n separated numbers" do
      expect(object.add("1\n4,5")).to eq(10)
    end

    # !! Negative flow test cases
    it "failing test case for improper imputs" do
      expect { object.add("1,,2") }.to raise_error(StandardError)
    end

    it "supports custom delimiter ;" do
      expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
    end

    it "supports custom delimiter *" do
      expect(StringCalculator.new.add("//*\n1*2")).to eq(3)
    end
  end
end
