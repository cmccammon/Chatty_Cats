class User < ActiveRecord::Base
  has_many :chats
  validates :name, :username, presence: true
end
