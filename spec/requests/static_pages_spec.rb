require 'spec_helper'

describe "Static Pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home Page" do
	before { visit home_path }
	
	it { should have_content('Sample App')}

	it { should have_selector('title', text: "#{base_title}")}
	
	it { should_not have_selector('title', text: '| Home')}
   end

  describe "Help Page" do
	before { visit help_path }
	
	it { should have_content('Help Page') }

	it { should have_selector('title',
		text: "#{base_title} | Help")}
  end

  describe "About page" do
	
	before { visit about_path }

	it {should have_selector('title',
		text: "#{base_title} | About")}

	it {should have_content('About Us')}
  end
  describe "Contact page" do
	before {visit contact_path}
	
	it { should have_selector('h1', text: 'Contact')}
	
	it { should have_selector('title',
		text: "#{base_title} | Contact Us")}
	it {should have_content('Contact Us')}
  end
end
