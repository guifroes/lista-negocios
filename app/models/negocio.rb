class Negocio < ApplicationRecord
    belongs_to :user
    belongs_to :categoria

    validates :nome, presence: true
end
