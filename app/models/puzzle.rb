class Puzzle < ActiveRecord::Base
	mount_uploader :image, AvatarUploader
end
