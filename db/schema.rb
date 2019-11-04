# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_191_104_183_017) do
  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'product_categories', force: :cascade do |t|
    t.integer 'product_id', null: false
    t.integer 'category_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['category_id'], name: 'index_product_categories_on_category_id'
    t.index ['product_id'], name: 'index_product_categories_on_product_id'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.decimal 'price'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'product_categories', 'categories'
  add_foreign_key 'product_categories', 'products'
end
