class Talk < ApplicationRecord
  belongs_to :note
  validates :author, presence: true
  validates :comment, presence: true
end
