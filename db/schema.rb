# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_04_211206) do

  create_table "contracts", force: :cascade do |t|
    t.integer "job_id"
    t.integer "freelancer_id"
    t.integer "bid_price"
  end

  create_table "freelancers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "email"
    t.string "certifications"
    t.string "bio"
    t.string "username"
    t.string "password_digest"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "poster_id"
    t.string "job_title"
    t.string "job_type"
    t.string "description"
    t.boolean "remote_job"
    t.integer "compensation"
    t.datetime "deadline_date"
  end

  create_table "posters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.string "address"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "poster_id"
    t.integer "freelancer_id"
    t.string "review"
    t.float "rating"
    t.datetime "date"
  end

end
