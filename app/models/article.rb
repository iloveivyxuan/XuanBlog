class Article < ApplicationRecord
	mount_uploader :banner, BannerUploader
  has_many :comments
end
