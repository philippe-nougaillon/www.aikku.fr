# frozen_string_literal: true

class AddPoidsToProjet < ActiveRecord::Migration[7.0]
  def change
    add_column :projets, :poids, :integer
  end
end
