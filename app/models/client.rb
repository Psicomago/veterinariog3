class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    def to_s
        self.name
    end
end
