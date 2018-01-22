require "minitest/autorun"
require_relative "cashregister.rb"

class Testcashregister < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_Mens_Jeans_returns_44_dollars_98_cents
		assert_equal(44.98, item_name("Mens Jeans"))
	end

    def test_assert_Mens_Socks_return_9_dollars_95_cents
		assert_equal(9.95, item_name("Mens Socks"))
	end

end