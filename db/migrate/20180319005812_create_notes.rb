class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :subhead
      t.string :body
      t.datetime :date

      t.timestamps
    end
  end
end
