class Photo < ApplicationRecord

has_many :comments, :class_name => "Comment"
has_many :likes, :class_name => "Like"
has_many :fans, :through => :likes, :source => :user

end
