require "test_helper"

class ObjectTest < Minitest::Test
  def test_creating_object_from_hash
    assert_equal "bar", Sendcloud::Object.new(foo: :bar).foo
  end

  def test_nested_hash
    assert_equal "foobar", Sendcloud::Object.new(foo: {bar: {baz: :foobar}}).foo.bar.baz
  end

  def test_nested_number
    assert_equal 1, Sendcloud::Object.new(foo: {bar: 1}).foo.bar
  end
end
