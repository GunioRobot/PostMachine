require 'acceptance/acceptance_helper'

feature 'Homepage', %q{
  In order to spend some spare time
  As a reader
  I want to read the blog
} do
  scenario 'should display a blog entry' do

    post = Post.create({ :title => 'Welcome to my blog', :content => 'This is my first post, and it supports _markdown_.', :published => true })

    visit '/'

    page.should have_css('article header hgroup h1', :text => 'Welcome to my blog')
    page.should have_css('article p', :text => 'This is my first post, and it supports')
    page.should have_css('article p em', :text => 'markdown')

  end
end
