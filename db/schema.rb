# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090702203652) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
  end

  create_table "authorships", :force => true do |t|
    t.integer  "person_id"
    t.integer  "publication_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_advertisements", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "pvl"
    t.integer  "responder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "job_title"
    t.integer  "address_id"
    t.integer  "office_phone"
    t.integer  "office_phone_ext"
    t.integer  "lab_phone"
    t.integer  "lab_phone_ext"
    t.integer  "fax"
    t.string   "email"
    t.text     "research_activities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "degree"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "personnel_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", :force => true do |t|
    t.string   "title"
    t.string   "journal_info"
    t.text     "abstract"
    t.date     "publication_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pmid"
  end

  create_table "study_descriptions", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
