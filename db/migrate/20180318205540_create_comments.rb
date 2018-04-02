class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
