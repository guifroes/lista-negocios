class Negocio < ApplicationRecord
    belongs_to :user
    belongs_to :categoria

    validates :nome, presence: true, length: { maximum: 80 }
    validates :descricao, length: { maximum: 1000 }
    validates :site, length: { maximum: 80 }
    validates :cep, length: { maximum: 80 }
    validates :logradouro, length: { maximum: 80 }
    validates :numero, length: { maximum: 80 }
    validates :complemento, length: { maximum: 80 }
    validates :bairro, length: { maximum: 80 }
    validates :cidade, length: { maximum: 80 }
    validates :estado, length: { maximum: 80 }
    validates :facebook, length: { maximum: 80 }
    validates :instagram, length: { maximum: 80 }
    validates :whatsapp, length: { maximum: 80 }
    validates :telefone, length: { maximum: 80 }
end
