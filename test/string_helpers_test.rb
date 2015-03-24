require_relative 'helper'

module StringHelpersTest
  
  test "upcase" do
    assert_equal upcase("áéíóú"), "ÁÉÍÓÚ"
  end

  test "downcase" do
    assert_equal downcase("ÁÉÍÓÚ"), "áéíóú"
  end

  test "camelize" do
    assert_equal camelize('camelize_this_string'), "CamelizeThisString"
  end

  test "underscore" do
    assert_equal underscore('CamelizeThisString'), "camelize_this_string"
  end

  test "sanitize_dirty_string" do
    assert_equal sanitize_dirty_string("Ge-o/rg.e        O'Hara"), "George O Hara"
  end

end