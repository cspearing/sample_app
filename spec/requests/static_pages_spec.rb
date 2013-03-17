require 'spec_helper'

describe "Static Pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home Page" do
	before { visit home_path }
	
	it { should have_content('Sample App')}

	it { should have_selector('title', :text => "#{base_title}")}
	
	it { should_not have_selector('title', :text => '| Home')}
   end

  describe "Help Page" do
	it "should have the content 'Help Page'" do
		visit help_path
		page.should have_content('Help Page')
	end

	it "should have the right title" do
		visit help_path
	 page.should have_selector('title',
		:text => "#{base_title} | Help")
	end
  end
  describe "About page" do
	it "should have the right title" do
	  visit about_path
	  page.should have_selector('title',
		:text => "#{base_title} | About")
	end
	it "should have the content 'About Us'" do
	  visit about_path
		page.should have_content('About Us')
	end
  end
  describe "Contact page" do
	it "should have h1 'Contact'" do
		visit contact_path
		page.should have_selector('h1', text: 'Contact')
	end

	it "should have the right title" do
		visit contact_path
	  page.should have_selector('title',
		:text => "#{base_title} | Contact Us")
	end
	it "should have the content 'Contact Us'" do
		visit contact_path
	  page.should have_content('Contact Us')
	end
  end

end
