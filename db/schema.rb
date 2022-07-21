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

ActiveRecord::Schema.define(version: 2022_07_21_082710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "insurances", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.bigint "assessment"
    t.string "address_line"
    t.string "city"
    t.string "province"
    t.integer "postal_code"
    t.bigint "phone_number"
    t.float "insurance_premium"
    t.string "home_owenr_1"
    t.string "home_owenr_2"
    t.string "home_owenr_3"
    t.string "referal_agent_name"
    t.string "referal_agent_email"
    t.string "type_of_property"
    t.integer "lot_number"
    t.boolean "existing_homeowner", default: false
    t.boolean "bound_by_water", default: false
    t.boolean "water_or_sewer", default: false
    t.boolean "issued_to_client", default: false
    t.boolean "denied_to_client", default: false
    t.boolean "is_english", default: false
    t.boolean "is_french", default: false
    t.datetime "purchase_date"
    t.text "notes"
    t.string "property_address"
    t.string "property_city"
    t.bigint "property_zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "request_callbacks", force: :cascade do |t|
    t.bigint "phone_number"
    t.string "best_time_to_call"
    t.integer "insurance_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
