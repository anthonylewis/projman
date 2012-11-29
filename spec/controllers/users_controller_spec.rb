require 'spec_helper'

describe UsersController do

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET 'show'" do
    
    context "signed in as admin" do
      before(:each) do
        @user.add_role :admin
      end

      it "should be successful" do
        get :show, :id => @user.id
        response.should be_success
      end

      it "should find the right user" do
        get :show, :id => @user.id
        assigns(:user).should == @user
      end
    end
    
    context "signed in as user" do
      before(:each) do
        @user.add_role :user
      end

      it "should be successful" do
        get :show, :id => @user.id
        response.should be_success
      end
    end
    
    it "should fail when not signed in" do
      sign_out @user
      get :show, :id => @user.id
      response.should_not be_success
    end
    
  end

end
