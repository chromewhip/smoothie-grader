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

ActiveRecord::Schema.define(version: 20160225203944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: true do |t|
    t.string "name"
    t.float  "water"
    t.float  "energy"
    t.float  "protein"
    t.float  "totallipidfat"
    t.float  "carbohydrate"
    t.float  "fiber"
    t.float  "sugars"
    t.float  "minerals"
    t.float  "calcium"
    t.float  "iron"
    t.float  "magnesium"
    t.float  "phosphorus"
    t.float  "potassium"
    t.float  "sodium"
    t.float  "zinc"
    t.float  "vitaminc"
    t.float  "thiamin"
    t.float  "riboflavin"
    t.float  "niacin"
    t.float  "vitaminb6"
    t.float  "folate"
    t.float  "vitaminb12"
    t.float  "vitamina_iu"
    t.float  "vitamine"
    t.float  "vitamind"
    t.float  "vitamink"
    t.float  "lipids"
    t.float  "saturatedfats"
    t.float  "monounsaturated"
    t.float  "polyunsaturated"
    t.float  "trans"
    t.float  "cholesterol"
    t.float  "aminoacids"
  end

end
