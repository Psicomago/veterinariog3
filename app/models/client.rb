class Client < ApplicationRecord
    has_many :pets, dependent: :destroy
    has_many :pet_history, through: :pets, dependent: :destroy
    accepts_nested_attributes_for :pets, allow_destroy: true #, reject_if: proc { |attributes| attributes['number'].blank? }


    def to_s
        self.name
    end
end
