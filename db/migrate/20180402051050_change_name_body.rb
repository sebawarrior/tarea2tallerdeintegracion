class ChangeNameBody < ActiveRecord::Migration[5.1]
  def change
    rename_column :talks, :body, :comment
  end
end
