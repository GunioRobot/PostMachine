require 'acceptance/acceptance_helper'

feature 'Homepage', %q{
  In order to spend some spare time
  As a reader
  I want to read the blog
} do
  scenario 'should display a blog entry' do

    post = Post.create({ :title => 'Welcome to my blog', :content => 'This is my first post, and it supports _markdown_.', :published => true })

    visit '/'

    within('article header hgroup h1') do
      page.should have_content('Welcome to my blog')
    end

    within('article p') do
      page.should have_content('This is my first post, and it supports')
    end

    within('article p em') do
      page.should have_content('markdown')
    end

  end
end
