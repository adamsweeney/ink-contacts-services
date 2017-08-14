class Contact < ApplicationRecord
	belongs_to :user

	has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }, default_url: "#{Paperclip::Attachment.default_options[:fog_host]}/default-thumbnail.jpg"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
