class Entry < ApplicationRecord
	has_many :comments
	validates :title, presence: true, uniqueness: true
  validates :subhead, presence: true
  validates :body, presence: true
  validates :date, presence: true
end
