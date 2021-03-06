class Note < ApplicationRecord
  has_many :talks, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :subtitle, length: { maximum: 200 }
  validates :body, presence: true
end
