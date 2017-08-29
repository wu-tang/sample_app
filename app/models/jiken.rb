class Jiken < ApplicationRecord
  validates :name,  presence: true
  validates :date,  presence: true
  default_scope -> { order(date: :asc) }
end
