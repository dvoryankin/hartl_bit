require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'root'" do
      visit '/'
      expect(page).to have_content('root')
    end
  end

  describe "static_pages" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end
end
