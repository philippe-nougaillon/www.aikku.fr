# frozen_string_literal: true

class AddFieldsToMessage < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :nom, :string
    add_column :messages, :prénom, :string
    add_column :messages, :structure, :string
    add_column :messages, :mobile, :string
    add_column :messages, :fonction, :string
  end
end
