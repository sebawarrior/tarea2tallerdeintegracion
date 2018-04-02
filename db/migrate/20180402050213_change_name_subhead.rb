class ChangeNameSubhead < ActiveRecord::Migration[5.1]
  def change
    rename_column :notes, :subhead, :subtitle
  end
end
