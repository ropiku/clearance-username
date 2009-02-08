require File.dirname(__FILE__) + '/../test_helper'

class UsersControllerTest < ActionController::TestCase
  include Clearance::Test::Functional::UsersControllerTest
  
  public_context do
    context "When getting new User view" do
      setup { get :new }
      
      should "display username field" do
        assert_select "input[type=text][name=?]", "user[username]", true, "There must be a username field"
      end
    end
  end
end