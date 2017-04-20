require 'rails_helper'
 
 describe UsersController, :type => :controller do 

   before do
    @user = User.create!(email: "tw17@gmail.com", password: "123456")
  end
 
   describe 'GET #show' do
 
     context "User is logged in" do 
       before 
         sign_in @user 
         get :show, id: @user.id
       end 
 
      it "loads correct user details" do
         expect(response).to be_success
         expect(response). to have_http_status(200)
         expect(assigns(:user)).to eq @user
       end
     end
 
     context "No user is logged in" do 
       before 
         get :show, id: @user.id
       end
 
       it "redirects to login" do 
         expect(response).to redirect_to(root_path)
       end
     end 
  end
end