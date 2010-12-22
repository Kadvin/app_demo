class CreateTopicTags < ActiveRecord::Migration
  def self.up
    create_table :topic_tags, :comment => "主题标签" do |t|
      t.belongs_to :topic, :comment => "主题帖"
      t.belongs_to :tag,   :comment => "标签"

      t.timestamps
    end
  end

  def self.down
    drop_table :topic_tags
  end
end
