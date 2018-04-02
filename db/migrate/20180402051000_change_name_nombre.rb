class ChangeNameNombre < ActiveRecord::Migration[5.1]
  def change
    rename_column :talks, :nombre, :author
  end
end
