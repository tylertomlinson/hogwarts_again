
ActiveRecord::Schema.define(version: 20200327015102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "professor_students", force: :cascade do |t|
    t.bigint "professor_id"
    t.bigint "student_id"
    t.index ["professor_id"], name: "index_professor_students_on_professor_id"
    t.index ["student_id"], name: "index_professor_students_on_student_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "house"
  end

  add_foreign_key "professor_students", "professors"
  add_foreign_key "professor_students", "students"
end
