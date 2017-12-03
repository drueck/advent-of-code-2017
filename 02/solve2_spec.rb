require "rspec"

RSpec.describe "solve2.rb" do
  it "computes the checksum of the given file using the evenly divisible checksum algorithm" do
    expect { system("ruby ./solve2.rb ./test_input_2.txt") }
      .to output("9\n").to_stdout_from_any_process
  end
end
