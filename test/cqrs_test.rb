require "test_helper"

class CQRSTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CQRS::VERSION
  end

end
