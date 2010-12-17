class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :subject
      t.integer :clicks
      t.integer :posts_count
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
