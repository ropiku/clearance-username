require File.dirname(__FILE__) + '/../test_helper'

class SessionsControllerTest < ActionController::TestCase
  include Clearance::Test::Functional::SessionsControllerTest
  
  context "Given an email confirmed user" do
    setup do
      @user = Factory(:user)
      @user.confirm_email!              
    end 

    context "a POST to #create with username and good credentials" do
      setup do
        post :create, :session => { 
                        :email    => @user.username, 
                        :password => @user.password }
      end

      should_set_the_flash_to /success/i
      should_redirect_to_url_after_create
      should_be_signed_in_as { @user }
    end
  end
end