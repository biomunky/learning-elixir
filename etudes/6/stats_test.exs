ExUnit.start

defmodule StatsTest do
	use ExUnit.Case, async: true

	test "minimum of [1 2 3]" do
		assert Stats.minimum([1,2,3]) == 1
	end

	test "minimum of []" do
		assert Stats.minimum([]) == nil
	end
	
end