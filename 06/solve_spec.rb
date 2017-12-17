require "rspec"

RSpec.describe "solve.rb" do
  it "outputs the number of memory reallocations before a duplicate state is produced" do
    expect { system("ruby ./solve.rb ./test_input.txt") }
      .to output("5\n").to_stdout_from_any_process
  end
end
