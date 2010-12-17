class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.belongs_to :topic
      t.belongs_to :author
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
