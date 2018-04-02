class RemoveTalkedFromNotes < ActiveRecord::Migration[5.1]
  def change
    remove_reference :notes, :talk, foreign_key: true
  end
end
