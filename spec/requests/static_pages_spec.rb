require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'First App'" do
   	 visit '/static_pages/home'  
   	 expect(page).to have_content('First App') 
      end 
    
    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Jon's First App")
  	   end
  end

	describe "Help page" do

		it "should have the content 'Help'" do
		visit '/static_pages/help'
		expect(page).to have_content("Help")
		end
		
		it "should have the right title" do
    	visit '/static_pages/help'
    	expect(page).to have_title("| Help")
   	end
	end
	
	describe "About page" do
	
		it "should have the content 'About Me'" do
		visit '/static_pages/about'
		expect(page).to have_content("About Me")
		end
		
		it "should have the right title" do
    	visit '/static_pages/about'
    	expect(page).to have_title("| About Me")
      end
	end
	
	describe "Contact page" do
	
		it "should have the content 'Contact'" do
		visit '/static_pages/contact'
		expect(page).to have_content('Contact')
		end
		
		it "should have the right title" do
    	visit '/static_pages/contact'
    	expect(page).to have_title("| Contact Information")
    	end
	end
end
