class RemoveTalkFromNotes < ActiveRecord::Migration[5.1]
  def change
    remove_reference :notes, :note, foreign_key: true
  end
end
