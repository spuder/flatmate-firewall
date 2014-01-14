require 'spec_helper'

describe "StaticPages" do


  # describe "GET /static_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get static_pages_index_path
  #     response.status.should be(200)
  #   end
  # end

  describe "Home Page" do

    it "verifies the home page has the word home page" do
  	  visit '/static_pages/home'
  	  expect(page).to have_content('Home')
  	end

  end

  describe "Admin Page" do

  	it "verifies the admin page has the word admin page" do
	  visit '/static_pages/admin'
  	  expect(page).to have_content('Admin')
  	end
  	
  end


end
