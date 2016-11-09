class Rescue < ApplicationRecord
  has_many :dogs

  validates :name, :img_url, :website, :state, presence: true
end
