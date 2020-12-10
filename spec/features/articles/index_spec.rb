# frozen_string_literal: true

require 'rails_helper'

feature 'Article Index Page' do
  background do
    @articles = FactoryBot.create_list(:article, 3)
  end

  scenario 'has all article titles' do
    visit '/articles'

    within '.page-header' do
      expect(page).to have_text 'All Articles'
    end

    within '.articles' do
      @articles.each do |article|
        article_link = { href: article_path(article.id) }
        expect(page).to have_link article.title, article_link
      end
    end
  end
end