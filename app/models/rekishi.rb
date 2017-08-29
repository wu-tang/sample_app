class Rekishi < ApplicationRecord
  validates :name,  presence: true
  validates :user_id, presence: true
  belongs_to :user
  has_many :jikens
  default_scope -> { order(created_at: :desc) }
end
