class AddTalkToNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :note, foreign_key: true
  end
end
