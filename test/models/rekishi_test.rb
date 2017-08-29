require 'test_helper'

class RekishiTest < ActiveSupport::TestCase
  def setup
    @user = users(:wutang)
    # このコードは慣習的に正しくない
    @rekishi = Rekishi.new(name: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @rekishi.valid?
  end

  test "user id should be present" do
    @rekishi.user_id = nil
    assert_not @rekishi.valid?
  end
end
