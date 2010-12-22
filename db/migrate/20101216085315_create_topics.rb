class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics, :comment => "主题帖" do |t|
      t.string :subject, :comment => "标题"
      t.integer :clicks, :comment => "点击数"
      t.integer :posts_count, :comment => "回帖数"
      t.string :state,   :comment => "状态"

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
