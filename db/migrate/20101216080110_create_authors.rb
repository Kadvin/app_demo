class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors, :comment => "作者" do |t|
      t.string :name, :comment => "姓名"

      t.timestamps
    end
  end

  def self.down
    drop_table :authors
  end
end
