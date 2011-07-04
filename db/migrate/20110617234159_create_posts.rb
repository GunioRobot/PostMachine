class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title
      t.text     :content
      t.boolean  :published, :default => false
      t.datetime :published_at

      t.timestamps
    end
  end
end
