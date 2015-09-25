class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :message, null: false
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :room, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
