require "rspec"
require "./memory.rb"

RSpec.describe Memory do
  describe "#banks" do
    context "when initialized with a set of banks" do
      it "returns the same banks" do
        memory = Memory.new([1, 2, 3, 4])
        expect(memory.banks).to eq([1, 2, 3, 4])
      end
    end
  end

  describe "#reallocate" do
    context "when given [0, 2, 7, 0]" do
      it "reallocates 7 and returns [2, 4, 1, 2]" do
        memory = Memory.new([0, 2, 7, 0])
        memory.reallocate
        expect(memory.banks).to eq [2, 4, 1, 2]
      end
    end

    context "when given [2, 4, 1, 2]" do
      it "reallocates 4 and returns [3, 1, 2, 3]" do
        memory = Memory.new([2, 4, 1, 2])
        memory.reallocate
        expect(memory.banks).to eq [3, 1, 2, 3]
      end
    end

    context "when given [3, 1, 2, 3]" do
      it "reallocates the first 3 and returns [0, 2, 3, 4]" do
        memory = Memory.new([3, 1, 2, 3])
        memory.reallocate
        expect(memory.banks).to eq [0, 2, 3, 4]
      end
    end
  end

  describe "#reallocation_count" do
    context "when reallocate has never been called" do
      it "returns 0" do
        memory = Memory.new([1, 2])
        expect(memory.reallocation_count).to eq 0
      end
    end

    context "when reallocate is called once" do
      it "returns 1" do
        memory = Memory.new([1, 2])
        memory.reallocate
        expect(memory.reallocation_count).to eq 1
      end
    end

    context "when reallocate is called four times" do
      it "returns 4" do
        memory = Memory.new([1, 2])
        4.times do
          memory.reallocate
        end
        expect(memory.reallocation_count).to eq 4
      end
    end
  end

  describe "#duplicate_state?" do
    context "when the current state has not been seen before" do
      it "returns falsy" do
        memory = Memory.new([1, 2])
        memory.reallocate
        expect(memory.duplicate_state?).to be_falsy
      end
    end

    context "when the current state has been seen before" do
      it "returns truthy" do
        memory = Memory.new([0, 0])
        memory.reallocate
        expect(memory.duplicate_state?).to be_truthy
      end
    end
  end
end
