class AddBodyToTalks < ActiveRecord::Migration[5.1]
  def change
    add_column :talks, :body, :string
  end
end
