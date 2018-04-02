class AddNombreToTalks < ActiveRecord::Migration[5.1]
  def change
    add_column :talks, :nombre, :string
  end
end
