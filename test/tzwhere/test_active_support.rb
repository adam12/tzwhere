require "test_helper"

class TestActiveSupport < Minitest::Test
  def test_format
    assert_equal "Atlantic Time (Canada)", TZWhere::ActiveSupport.format("America/Halifax")
  end

  def test_format_nil
    assert_nil TZWhere::ActiveSupport.format(nil)
  end
end
