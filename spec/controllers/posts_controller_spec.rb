require 'spec_helper'

describe PostsController do

  describe 'GET :index' do

    it 'should be successful' do
      get 'index'

      response.should be_success
      response.should render_template(:index)
    end

    it 'should assing @posts' do
      posts = [mock_model(Post), mock_model(Post)]
      Post.stub_chain(:all, :reverse).and_return(posts)

      get 'index'

      assigns[:posts].should == posts
    end

  end

end
