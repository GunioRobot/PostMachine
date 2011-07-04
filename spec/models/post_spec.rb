require 'spec_helper'

describe Post do
  before :each do
    @post = Post.new
  end

  context 'a new post' do
    it 'should not be published by default' do
      @post.should_not be_published
    end

    it 'should be publishable' do
      @post.title = 'Post title'
      @post.content = 'Post content.'
      @post.save

      @post.publish
      @post.should be_published
    end
  end

  context 'validations' do
    context 'on title' do
      it 'should check for content' do
        @post.should have_at_least(1).error_on(:title)
        @post.errors[:title].should include(I18n.t('activerecord.errors.blank'))
      end

      it 'should pass with content' do
        @post.title = 'Post title'
        @post.should have(:no).errors_on(:title)
      end
    end

    context 'on content' do
      it 'should have content' do
        @post.should have_at_least(1).error_on(:content)
        @post.errors[:content].should include(I18n.t('activerecord.errors.blank'))
      end
      it 'should pass with content' do
        @post.content = 'Post content.'
        @post.should have(:no).errors_on(:content)
      end
    end
  end
end
