require "minitest/autorun"
require_relative "cashregister.rb"

class Testcashregister < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_Mens_Jeans_returns_44_dollars_95_cents
		assert_equal("44.95", item_name("Mens Jeans"))
	end

    def test_assert_Mens_Socks_return_9_dollars_95_cents
		assert_equal("9.95", item_name("Mens Socks"))
	end

	def test_assert_Mens_Shoes_return_69_dollars_95_cents
		assert_equal("69.95", item_name("Mens Shoes"))
	end
end