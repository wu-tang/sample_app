class Rekishi < ApplicationRecord
  validates :name,  presence: true

  ### XXX
  has_many :jidais
end