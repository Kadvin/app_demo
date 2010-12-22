class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts, :comment => "回帖" do |t|
      t.belongs_to :topic, :comment => "主帖"
      t.belongs_to :author, :comment => "作者"
      t.string :content,    :comment => "内容"

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
