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

ActiveRecord::Schema[7.1].define(version: 2025_07_17_161013) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_interest_submissions", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "surname", null: false
    t.string "company_name", null: false
    t.string "address", null: false
    t.integer "number_of_employees", null: false
    t.string "position", null: false
    t.text "telephone", null: false
    t.string "email", null: false
    t.boolean "contact_consent", default: false, null: false
    t.boolean "monthly_newsletter", default: false, null: false
    t.text "questions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "sales_notes"
  end

end
