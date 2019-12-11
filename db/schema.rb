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

ActiveRecord::Schema.define(version: 2019_12_10_214654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "survey_id"
    t.bigint "question_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["survey_id"], name: "index_answers_on_survey_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.text "message"
  end

  create_table "join_question_responses", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "response_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_join_question_responses_on_question_id"
    t.index ["response_id"], name: "index_join_question_responses_on_response_id"
  end

  create_table "join_response_respondents", force: :cascade do |t|
    t.bigint "response_id"
    t.bigint "respondent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["respondent_id"], name: "index_join_response_respondents_on_respondent_id"
    t.index ["response_id"], name: "index_join_response_respondents_on_response_id"
  end

  create_table "landings", force: :cascade do |t|
    t.bigint "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.index ["survey_id"], name: "index_landings_on_survey_id"
  end

  create_table "lists", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "survey_id"
    t.text "content"
    t.boolean "answered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "respondents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer "value"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "landing_id"
    t.index ["landing_id"], name: "index_surveys_on_landing_id"
    t.index ["user_id"], name: "index_surveys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "company"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "surveys"
  add_foreign_key "join_question_responses", "questions"
  add_foreign_key "join_question_responses", "responses"
  add_foreign_key "join_response_respondents", "respondents"
  add_foreign_key "join_response_respondents", "responses"
  add_foreign_key "landings", "surveys"
  add_foreign_key "questions", "surveys"
  add_foreign_key "surveys", "landings"
end
