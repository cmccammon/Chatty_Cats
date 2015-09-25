class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :message
      t.user :belongs_to
      t.room :belong_to

      t.timestamps null: false
    end
  end
end
