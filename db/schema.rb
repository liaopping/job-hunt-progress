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

ActiveRecord::Schema.define(version: 2020_11_15_063025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_hunt_services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_hunters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_job_hunters_on_confirmation_token", unique: true
    t.index ["email"], name: "index_job_hunters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_job_hunters_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_job_hunters_on_unlock_token", unique: true
  end

  create_table "selections", force: :cascade do |t|
    t.bigint "job_hunter_id"
    t.bigint "company_id"
    t.bigint "job_hunt_service_id"
    t.date "date_of_attended_company_information_session"
    t.date "date_of_got_a_scout"
    t.date "date_of_applied"
    t.date "date_of_first_casual_interview"
    t.date "date_of_second_casual_interview"
    t.date "date_of_first_interview"
    t.date "date_of_second_interview"
    t.date "date_of_third_interview"
    t.date "date_of_fourth_interview"
    t.date "date_of_fifth_interview"
    t.date "date_of_got_a_job"
    t.date "date_of_be_prayed"
    t.date "date_of_prayed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_selections_on_company_id"
    t.index ["job_hunt_service_id"], name: "index_selections_on_job_hunt_service_id"
    t.index ["job_hunter_id"], name: "index_selections_on_job_hunter_id"
  end

  add_foreign_key "selections", "companies"
  add_foreign_key "selections", "job_hunt_services"
  add_foreign_key "selections", "job_hunters"
end
