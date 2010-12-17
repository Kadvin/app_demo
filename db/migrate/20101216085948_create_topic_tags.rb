class CreateTopicTags < ActiveRecord::Migration
  def self.up
    create_table :topic_tags do |t|
      t.belongs_to :topic
      t.belongs_to :tag

      t.timestamps
    end
  end

  def self.down
    drop_table :topic_tags
  end
end
