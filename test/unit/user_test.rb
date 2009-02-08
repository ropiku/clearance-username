require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  include Clearance::Test::Unit::UserTest
  
  should_allow_mass_assignment_of :username
  
  context "When signing up" do
    should_validate_presence_of :username
  end
  
  context "When multiple users have signed up" do
    setup { @user = Factory(:user) }
    
    should_require_unique_attributes :username
  end
  
  context "A user" do
    setup do
      @user     = Factory(:user)
      @password = @user.password
    end
    
    should "authenticate with username and good credentials" do
      assert User.authenticate(@user.username, @password)
      assert @user.authenticated?(@password)
    end
  end
end