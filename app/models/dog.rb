class Dog < ApplicationRecord
  belongs_to :rescue

   validates :name, :age, :breed, :gender, :img_url, :status, presence: true

   validates :name, length: { maximum: 30 }
end
