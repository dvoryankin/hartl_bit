require 'spec_helper'

describe "Static pages" do

  describe "Home " do
    it "should have the content 'Welcome'" do
      visit '/'
      expect(page).to have_selector(:css, 'h1', :text => 'Welcome')
    end
  end

  describe "Home page" do
    it "should have the content 'Welcome'" do
      visit '/'
      expect(page).to have_content('Welcome')
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
