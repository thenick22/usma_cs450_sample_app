require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "GET /user_pages" do
    it "Sign Up page exists" do
	get signup_path
	expect(response).to have_http_status(200)
	end
  end
end
 
 describe "User pages" do

  let(:base_title) { "USMA CS450" }
	
  describe "Signup page" do
	before {visit signup_path}
	
    it "should have the h1 'USMA CS450 Sample App'" do
       expect(page).to have_selector('h1', :text => 'Sign Up')
    end
    
   it "should have the title 'Sign Up'" do
		expect(page).to have_title "#{base_title} | Sign Up"
   end
  end

  subject {page}
  describe "profile page" do
	let(:user) {FactoryGirl.create(:user)}
	before { visit user_path(user) }

	it{ should have_selector('h1', text: user.name) }
	it{ expect(page).to have_title user.name}
  end


end
