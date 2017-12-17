require "rspec"

RSpec.describe "solve.rb" do
  it "outputs the number of memory reallocations in the infinite loop" do
    expect { system("ruby ./solve2.rb ./test_input.txt") }
      .to output("4\n").to_stdout_from_any_process
  end
end
