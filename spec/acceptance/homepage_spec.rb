require 'spec_helper'

feature 'Homepage', %q{
  In order to spend some spare time
  As a reader
  I want to read the blog
} do
  scenario 'should display a blog entry', :js => true do
    # If there are any Posts, should display in the homepage
    post = Post.create :title => 'Welcome to my blog',
                       :content => 'This is my first post, and it supports _markdown_.'

    post.publish

    visit root_path

    page.should have_css('article header hgroup h1', :text => 'Welcome to my blog')
    page.should have_css('article p', :text => 'This is my first post, and it supports')
    page.should have_css('article p em', :text => 'markdown')
    page.should have_css('article footer p time', :text => post.created_at.strftime("%D"))

  end
end
