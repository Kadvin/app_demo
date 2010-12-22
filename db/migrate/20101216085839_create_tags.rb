class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags, :comment => "标签" do |t|
      t.string :name, :comment => "名称"

      t.timestamps
    end
  end

  def self.down
    drop_table :tags
  end
end
