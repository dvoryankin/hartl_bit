require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'root'" do
      visit '/'
      expect(page).to have_content('Sample App')
    end
  end

  describe "static_pages" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
end
