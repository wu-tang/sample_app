require 'test_helper'

class JidaiTest < ActiveSupport::TestCase
  def setup
    @jidai = Jidai.new(name: "Example Jiken name", start_date: "2017-08-22", end_date: "2017-08-23")
  end

  test "should be valid" do
    assert @jidai.valid?
  end

  test "name should be present" do
    @jidai.name = "     "
    assert_not @jidai.valid?
  end

  test "startdate should be present" do
    @jidai.start_date = "     "
    assert_not @jidai.valid?
  end

  test "enddate should be present" do
    @jidai.end_date = "     "
    assert_not @jidai.valid?
  end
end
