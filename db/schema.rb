# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101216085948) do

  create_table "authors", :force => true, :comment => '作者' do |t|
    t.string   "name",       :comment => "姓名"
    t.datetime "created_at", :comment => "创建时间"
    t.datetime "updated_at", :comment => "更新时间"
  end

  create_table "posts", :force => true, :comment => '回帖' do |t|
    t.integer  "topic_id",   :comment => "主帖"
    t.integer  "author_id",  :comment => "作者"
    t.string   "content",    :comment => "内容"
    t.datetime "created_at", :comment => "创建时间"
    t.datetime "updated_at", :comment => "更新时间"
  end

  create_table "tags", :force => true, :comment => '标签' do |t|
    t.string   "name",       :comment => "名称"
    t.datetime "created_at", :comment => "创建时间"
    t.datetime "updated_at", :comment => "更新时间"
  end

  create_table "topic_tags", :force => true, :comment => '主题标签' do |t|
    t.integer  "topic_id",   :comment => "主题帖"
    t.integer  "tag_id",     :comment => "标签"
    t.datetime "created_at", :comment => "创建时间"
    t.datetime "updated_at", :comment => "更新时间"
  end

  create_table "topics", :force => true, :comment => '主题帖' do |t|
    t.string   "subject",     :comment => "标题"
    t.integer  "clicks",      :comment => "点击数"
    t.integer  "posts_count", :comment => "回帖数"
    t.string   "state",       :comment => "状态"
    t.datetime "created_at",  :comment => "创建时间"
    t.datetime "updated_at",  :comment => "更新时间"
  end

end
