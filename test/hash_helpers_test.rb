require_relative 'helper'

module HashHelpersTest

  test "symbolize_keys" do
    hash = { "key" => "value", "other_key" => {"nested_key" => "nested_value"} }
    expected = { key: "value", other_key: {nested_key: "nested_value"} }

    assert_equal symbolize_keys(hash), expected
  end

  test "underscore_keys" do
    hash = { "Key" => "value", "OtherKey" => {"NestedKey" => "nested_value"} }
    expected = { "key" => "value", "other_key" => {"nested_key" => "nested_value"} }

    assert_equal underscore_keys(hash), expected
  end

  test "camelize_keys" do
    hash = { "key" => "value", "other_key" => {"nested_key" => "nested_value"} }
    expected = { "Key" => "value", "OtherKey" => {"NestedKey" => "nested_value"} }

    assert_equal camelize_keys(hash), expected
  end

  test "stringify_keys" do
    hash = { key: "value", other_key: {nested_key: "nested_value"} }
    expected = { "key" => "value", "other_key" => {"nested_key" => "nested_value"} }

    assert_equal stringify_keys(hash), expected
  end

  test "select_keys" do
    hash = { alpha: 1, beta: 2, delta: 3, gamma: 4 }
    expected = { alpha: 1, delta: 3 }
    assert_equal select_keys(hash, :alpha, :delta), expected
  end

end