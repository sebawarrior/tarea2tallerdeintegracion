class AddNoteToTalks < ActiveRecord::Migration[5.1]
  def change
    add_reference :talks, :note, foreign_key: true
  end
end
