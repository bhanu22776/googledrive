class User < ActiveRecord::Base
  attr_accessible :name, :photo

  	has_attached_file :photo,
    :storage => :google_drive,
    :google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
     :google_drive_options => {
     	:path => proc { |style| "#{style}#{id}#{photo.original_filename}" },
       	:public_folder_id => "0B02-Gm2pnw78QU5WUHdIMl81Tzg",
       	:default_image=> 'animal.jpg'
    }
end
