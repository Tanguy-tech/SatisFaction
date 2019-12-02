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

ActiveRecord::Schema.define(version: 2019_12_02_142013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "questions", force: :cascade do |t|
    t.integer "number"
    t.text "content"
    t.bigint "survey_id"
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
    t.index ["user_id"], name: "index_surveys_on_user_id"
  end

  add_foreign_key "join_question_responses", "questions"
  add_foreign_key "join_question_responses", "responses"
  add_foreign_key "join_response_respondents", "respondents"
  add_foreign_key "join_response_respondents", "responses"
end
