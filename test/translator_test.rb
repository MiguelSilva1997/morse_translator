require 'minitest'
require 'minitest/autorun'
require './lib/translator'

class TestTranslate < Minitest::Test
  def test_if_class_exist
    assert Translate.new
  end

  def test_if_eng_to_morse_method_works
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_if_from_file_works
      translator = Translate.new
      assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end
end
