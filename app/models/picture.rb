class Post < ActiveRecord::Base
  belongs_to :post
  attr_accessor :post

end
