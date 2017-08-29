class Jidai < ApplicationRecord
  validates :name,  presence: true
  validates :start_date,  presence: true
  validates :end_date,  presence: true
  validates :rekishi_id, presence: true
  belongs_to :rekishi
  default_scope -> { order(start_date: :desc) }
end
