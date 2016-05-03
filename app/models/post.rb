class Post < ActiveRecord::Base
  has_many :pictures
  mount_uploader :picture, PictureUploader

end
