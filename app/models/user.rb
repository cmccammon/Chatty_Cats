class User < ActiveRecord::Base
  has_many :chats, dependent: :destroy
  validates :name, :username, presence: true
end
