Paperclip::Attachment.default_options[:storage] = :fog
Paperclip::Attachment.default_options[:fog_credentials] = { provider: "Local", local_root: "#{Rails.root}/public"}
Paperclip::Attachment.default_options[:fog_directory] = ""
