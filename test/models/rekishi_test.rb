require 'test_helper'

class RekishiTest < ActiveSupport::TestCase
  def setup
    @rekishi = Rekishi.new(name: "Example Rekishi name")
  end

  test "should be valid" do
    assert @rekishi.valid?
  end

  test "name should be present" do
    @rekishi.name = "     "
    assert_not @rekishi.valid?
  end
end
