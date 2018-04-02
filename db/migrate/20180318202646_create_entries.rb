class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.text :title
      t.text :subhead
      t.text :body
      t.datetime :date

      t.timestamps
    end
  end
end
