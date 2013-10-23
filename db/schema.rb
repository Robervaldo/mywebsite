# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20131023030915) do

  create_table "comments", :force => true do |t|
    t.string   "author",       :limit => 150,                    :null => false
    t.string   "author_email", :limit => 150,                    :null => false
    t.string   "content",      :limit => 500,                    :null => false
    t.boolean  "approved",                    :default => false, :null => false
    t.integer  "parent_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "comments_courses", :id => false, :force => true do |t|
    t.integer "comment_id"
    t.integer "course_id"
  end

  create_table "comments_posts", :id => false, :force => true do |t|
    t.integer "comment_id"
    t.integer "post_id"
  end

  create_table "courses", :force => true do |t|
    t.string   "title",       :limit => 150,                   :null => false
    t.text     "description",                                  :null => false
    t.integer  "language_id"
    t.boolean  "status",                     :default => true, :null => false
    t.date     "start_date",                                   :null => false
    t.date     "end_date"
    t.string   "tags",        :limit => 50,                    :null => false
    t.string   "slug",        :limit => 150,                   :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "courses", ["language_id"], :name => "index_courses_on_language_id"
  add_index "courses", ["slug"], :name => "index_courses_on_slug", :unique => true
  add_index "courses", ["title"], :name => "index_courses_on_title", :unique => true

  create_table "languages", :force => true do |t|
    t.string   "description", :limit => 100,                   :null => false
    t.boolean  "status",                     :default => true, :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title",      :limit => 150,                   :null => false
    t.text     "content",                                     :null => false
    t.string   "slug",       :limit => 150,                   :null => false
    t.boolean  "status",                    :default => true
    t.string   "tags",       :limit => 50,                    :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "posts", ["slug"], :name => "index_posts_on_slug", :unique => true
  add_index "posts", ["title"], :name => "index_posts_on_title", :unique => true

end
