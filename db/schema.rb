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

ActiveRecord::Schema.define(version: 2019_08_09_005343) do

  create_table "activities", force: :cascade do |t|
    t.text "description"
    t.integer "lessions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lessions_id"], name: "index_activities_on_lessions_id"
  end

  create_table "collaborations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_collaborations_on_course_id"
    t.index ["user_id"], name: "index_collaborations_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "classPlan"
    t.string "enviromentSetting"
    t.bigint "selective_processes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["selective_processes_id"], name: "index_courses_on_selective_processes_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "content"
    t.integer "feedble_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feedble_id"], name: "index_feedbacks_on_feedble_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_groups_on_activity_id"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "lessions", force: :cascade do |t|
    t.bigint "courses_id"
    t.date "day"
    t.time "startTime"
    t.time "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_lessions_on_courses_id"
  end

  create_table "lessions_subjects", id: false, force: :cascade do |t|
    t.bigint "lession_id", null: false
    t.bigint "subject_id", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.integer "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "link"
    t.index ["courses_id"], name: "index_materials_on_courses_id"
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "selective_processes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "situation"
    t.index ["selective_processes_id"], name: "index_participations_on_selective_processes_id"
    t.index ["users_id"], name: "index_participations_on_users_id"
  end

  create_table "presences", force: :cascade do |t|
    t.integer "users_id"
    t.integer "lessions_id"
    t.integer "status"
    t.integer "performance"
    t.text "observation"
    t.time "minutes_late"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lessions_id"], name: "index_presences_on_lessions_id"
    t.index ["users_id"], name: "index_presences_on_users_id"
  end

  create_table "selective_processes", force: :cascade do |t|
    t.integer "year"
    t.integer "schoolTerm"
    t.date "startDate"
    t.date "registrationDeadline"
    t.date "finishDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "status"
    t.string "link"
    t.integer "performance"
    t.text "observation"
    t.integer "subable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subable_id"], name: "index_submissions_on_subable_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "adm"
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
