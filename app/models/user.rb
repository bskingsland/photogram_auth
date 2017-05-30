class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :comments, :class_name => "Comment"
has_many :likes, :class_name => "Like"
has_many :photos, :class_name => "Photo"
has_many :liked_photos, :through => :likes, :source => :photo

end
