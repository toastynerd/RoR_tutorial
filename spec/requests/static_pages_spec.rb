require 'spec_helper'

describe "Static Pages" do

	describe "Home Page" do
		before { visit root_path }
		subject { page } 		
		it { should have_selector('h1', :text => 'Sample App') }
		it { should have_selector('title', text: full_title(''))}
		it { should_not have_selector('title', :text => '| Home')}
	end

	describe "Help Page" do
		before { visit help_path }
		subject { page }	
		it { should have_selector('h1', :text => 'Help')}
	 	it { should have_selector('title', text: full_title('Help')) }
	end
	
	describe "About Page" do
		before { visit about_path }
		subject { page }  		
		it { should have_selector('h1', :text => 'About Us') }
		it { should have_selector('title', text: full_title('About')) }
	end

	describe "Contact Page" do
		before { visit contact_path }
		subject { page }
		it { should have_selector('h1', :text => 'Contact Us') }
		it { should have_selector('title', text: full_title('Contact')) }
	end
end
