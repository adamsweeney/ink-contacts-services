class ContactSerializer < ActiveModel::Serializer
	attributes :id, :first_name, :last_name, :phone_number, :email, :avatar, :thumb

	def avatar
		object.avatar.url
	end

	def thumb
		object.avatar.url(:thumbnail)
	end
end
