require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
	get static_pages_home_path
	expect(response).to have_http_status(200)

	get static_pages_help_path
	expect(response).to have_http_status(200)

    end
  end
end


describe "Static pages" do

  #See Hartl Listing 3.9
  describe "Home page" do

    it "should have the content 'USMA CS450 Sample App'" do
      visit '/static_pages/home'
      #notice that the old test format is commented out
      #page.should have_content('Sample App')
      #and the new test format is below.
      #comments like the above should not be included in production code.
      #Instead we should rely on the revision control system to caputre this
      #kind of information outside of the code.
      expect(page).to have_content('USMA CS450 Sample App')
    end
  end

  #See Hartl Listing 3.11
  describe "Help page" do

    it "should have the content 'USMA CS450 Sample App Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('USMA CS450 Sample App Help')
    end
  end

  #See Hartl Listing 3.13
  describe "About page" do

    it "should have the content 'USMA CS450 Sample App About'" do
      visit '/static_pages/about'
      expect(page).to have_content('USMA CS450 Sample App About')
    end
  end

end 
