class Articulo < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader

	belongs_to :user
end
