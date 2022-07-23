class Pet < ApplicationRecord
  validates :name, presence: true
  validates :race, presence: true
  
  belongs_to :client
  has_many :pet_histories, dependent: :destroy
end
