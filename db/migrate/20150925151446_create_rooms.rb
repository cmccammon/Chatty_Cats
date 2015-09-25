class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      has_many :users, through: :chats
      t.timestamps null: false
    end
  end
end
