# frozen_string_literal: true

class AddPoidsToClient < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :poids, :integer, default: 0
  end
end
