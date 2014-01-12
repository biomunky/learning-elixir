ExUnit.start

defmodule DropTest do
	use ExUnit.Case, async: true

  test "Zero distance gives zero velocity" do
    assert Drop.fall_velocity(:earth, 0) == 0
  end

  test "Mars works?" do
    assert Drop.fall_velocity(:mars, 10) == :math.sqrt(2 * 3.71 * 10)
  end

  test "Earth works?" do
    calculated = Drop.fall_velocity(:earth, 1)
    assert_in_delta calculated, 4.4, 0.05,
                                       "Result of #{calculated} not within 0.05 of 4.4"
  end

  test "Unknown planet" do
    assert_raise CaseClauseError, fn -> Drop.fall_velocity(:planetX, 10) end
  end

end
