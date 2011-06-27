class Post < ActiveRecord::Base
  validates :title,   :presence => true
  validates :content, :presence => true

  def content_html
    extensions = [:fenced_code, :hard_wrap, :no_intraemphasis]
    Redcarpet.new(content, *extensions).to_html.html_safe
  end
end
