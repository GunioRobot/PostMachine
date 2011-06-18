class Post < ActiveRecord::Base
  validates :title,   :presence => true
  validates :content, :presence => true

  def content_html
    RDiscount.new(content).to_html
  end
end
