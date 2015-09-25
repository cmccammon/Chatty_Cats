class Room < ActiveRecord::Base
  has_many :chats
  has_many :users, through: :chats
end
