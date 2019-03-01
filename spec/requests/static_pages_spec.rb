require 'spec_helper'

describe "Static pages" do

  describe "Home " do
    it "should have the h1 'Welcome'" do
      visit '/'
      expect(page).to have_selector(:css, 'h1', :text => 'Welcome')
    end

    it "should have the base title" do
      visit '/'
      expect(page).to have_title('Ruby on Rails Application')
    end

    it "should not have a custom page title" do
      visit '/'
      expect(page).to_not have_selector(:css,'title', :text => 'Home')
    end
  end

  describe "static_pages" do
    it "should have the content 'Help'" do
      visit 'help'
      expect(page).to have_content('Help')
    end

    it "should have the content 'About'" do
      visit 'about'
      expect(page).to have_content('About')
    end

    it "should have the content 'Contact'" do
      visit 'contact'
      expect(page).to have_content('Contact')
    end
  end
end
