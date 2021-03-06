require "rspec"

RSpec.describe "solve2.rb" do
  it "outputs the number of memory reallocations before a duplicate state is produced" do
    expect { system("ruby ./solve2.rb ./test_input.txt") }
      .to output("4\n").to_stdout_from_any_process
  end
end
