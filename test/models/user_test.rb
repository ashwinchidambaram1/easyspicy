require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = user.new(name: "Ashwin Chid", email: "ashwinchidambaram1@gmail.com", type: "cook", phone: "5088452147", housenum: 23, street: "Jonny Drive", town: "Worcester", state: "Massachusetts", cardtype: "visa", expmonth: "November", expyear: 2018, cardnum: 	
4012888888881881)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

   test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  
end
