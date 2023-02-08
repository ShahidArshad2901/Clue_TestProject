# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_08_162231) do
  create_table "conclusions", force: :cascade do |t|
    t.text "context"
    t.string "conclusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "question_id"
    t.string "yes_answer"
    t.string "yes_context"
    t.string "yes_question_id"
    t.string "no_answer"
    t.string "no_context"
    t.string "no_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
