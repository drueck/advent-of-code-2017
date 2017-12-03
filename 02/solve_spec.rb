require "rspec"

RSpec.describe "solve.rb" do
  it "computes the checksum of the given file using the largest difference checksum algorithm" do
    expect { system("ruby ./solve.rb ./test_input.txt") }
      .to output("18\n").to_stdout_from_any_process
  end
end
