# frozen_string_literal: true

class AddForeignKeyToPages < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :pages, :sections, column: :section_id
  end
end
