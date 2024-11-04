class AddDescriptionEnToClient < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :description_en, :text
  end
end
