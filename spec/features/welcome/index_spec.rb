require 'rails_helper'

feature 'Welcome Page' do
  background do
    visit root_path
  end

  scenario 'has a page header' do
    within '.page-header' do
      page_has_text 'Home'
    end
  end
  
  scenario 'has a nav bar' do
    home_link = ['Home', href: root_path]
    articles_link = ['Articles', href: '/articles']
    links = [home_link, articles_link]

    within '#nav-bar' do
      page_has_links links
    end
  end
end