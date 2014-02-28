require "test_helper"

class TestQuery < Minitest::Test
  def test_lookup
    assert_equal "America/Toronto", TZWhere.lookup(43.18333333, -79.233333)
    assert_equal "America/Chicago", TZWhere.lookup(41.7599, -87.2079)
  end
end
