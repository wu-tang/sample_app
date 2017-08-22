require 'test_helper'

class JikenTest < ActiveSupport::TestCase
  def setup
    @jiken = Jiken.new(name: "Example Jiken name", date: "2017-08-22")
  end

  test "should be valid" do
    assert @jiken.valid?
  end

  test "name should be present" do
    @jiken.name = "     "
    assert_not @jiken.valid?
  end

  test "date should be present" do
    @jiken.date = "     "
    assert_not @jiken.valid?
  end

end
