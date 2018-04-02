class Comment < ApplicationRecord
  belongs_to :entry
  validates :body, presence: true
  validates :name, presence: true
  validates :date, presence: true
end
