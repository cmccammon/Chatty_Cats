class Chat < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  validates :message, length: { in: 2..160 }
end
