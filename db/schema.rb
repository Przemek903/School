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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150724131235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.string   "syllabus"
    t.string   "categories"
    t.string   "recommendedBackground"
    t.string   "language"
    t.string   "timeOfStudy"
    t.boolean  "active",                default: true
    t.integer  "user_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "discussedTopic"
    t.text     "mainKnowledge"
    t.integer  "course_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "user_id"
    t.string   "course_id"
    t.string   "grade"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "status",     default: true
  end

  create_table "test_questions", force: :cascade do |t|
    t.integer  "test_id"
    t.text     "question"
    t.string   "answerA"
    t.string   "answerB"
    t.string   "answerC"
    t.string   "answerD"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "correctAnswer"
  end

  create_table "test_results", force: :cascade do |t|
    t.integer  "test_id"
    t.integer  "participant_id"
    t.integer  "grade"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",             null: false
    t.string   "encrypted_password",     default: "",             null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,              null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "surname"
    t.datetime "birthDate"
    t.string   "rank",                   default: "Początkujący"
    t.integer  "rankPoints",             default: 0
    t.boolean  "isStudent",              default: true
    t.boolean  "isTeacher",              default: false
    t.boolean  "isAdmin",                default: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
