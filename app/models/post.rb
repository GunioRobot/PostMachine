class Post < ActiveRecord::Base
  validates :title,   :presence => true
  validates :content, :presence => true

  scope :published,
        :conditions => { :published => true },
        :order => 'published_at DESC'

  def content_html
    extensions = [:fenced_code, :hard_wrap, :no_intraemphasis]
    Redcarpet.new(content, *extensions).to_html.html_safe
  end

  def publish
    update_attributes :published => true, :published_at => Time.now
  end

  def unpublish
    update_attributes :published => false, :published_at => nil
  end
end
