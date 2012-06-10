require 'spec_helper'

describe "Static Pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
	it "should have sthe content 'Sample App'" do
	 visit '/static_pages/home'
	 page.should have_content('Sample App')    
    	end

	it "should have the right title" do
	 visit "/static_pages/home"
	 page.should have_selector('title',
		:text => "#{base_title}")
	end 
	it "should not have a custom title" do
	 visit "/static_pages/home"
	 page.should_not have_selector('title', :text => '| Home')
	end
   end

  describe "Help Page" do
	it "should have the content 'Help Page'" do
		visit '/static_pages/help'
		page.should have_content('Help Page')
	end

	it "should have the right title" do
	 visit "/static_pages/help"
	 page.should have_selector('title',
		:text => "#{base_title} | Help")
	end
  end
  describe "About page" do
	it "should have the right title" do
	  visit "/static_pages/about"
	  page.should have_selector('title',
		:text => "#{base_title} | About")
	end
	it "should have the content 'About Us'" do
		visit '/static_pages/about'
		page.should have_content('About Us')
	end
  end
  describe "Contact page" do
	it "should have the right title" do
	  visit "/static_pages/contact"
	  page.should have_selector('title',
		:text => "#{base_title} | Contact Us")
	end
	it "should have the content 'Contact Us'" do
	  visit "/static_pages/contact"
	  page.should have_content('Contact Us')
	end
  end

end
