class Talk < ApplicationRecord
  belongs_to :note
  validates :nombre, presence: true
  validates :body, presence: true
end
