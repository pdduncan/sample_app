require 'spec_helper'


describe "Static pages" do

  let(:titlestart) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      puts "I'M IN RSPEC"
      puts grtk()
      expect(page).to have_title("#{titlestart}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page hpfdahf" do

    it "should have the content 'Help'. Idiot!" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{titlestart} | Help")
    end
  end

  describe "About page (about page I said)" do

    it "should have the content 'About Us', but it doesn't. Idiot!" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{titlestart} | About Us")
    end
  end

  describe "You know, the contact page" do

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
