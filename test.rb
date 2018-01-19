require "minitest/autorun"
require_relative "cashregister.rb"

class Testcashregister < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_Mens_Jeans_returns_44.95
		assert_equal("44.95", item("Mens Jeans"))
	end

    def test_assert_Mens_Socks_return_9.95
		assert_equal("9.95", item("Mens Socks"))
	end

	def test_assert_Mens_Shoes_return_69.95
		assert_equal("69.95", item("Mens Shoes"))
	end
end