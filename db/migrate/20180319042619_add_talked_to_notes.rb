class AddTalkedToNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :talk, foreign_key: true
  end
end
