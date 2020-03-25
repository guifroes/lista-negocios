class User < ApplicationRecord
    has_many :negocios
	def self.find_or_create_from_auth_hash(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.nome = auth.info.first_name
			user.email = auth.info.email
			user.save!
		end
	end
end
