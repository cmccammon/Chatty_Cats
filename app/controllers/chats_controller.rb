class ChatsController < ApplicationController
  def index
    chats = Chat.all
      render json: chats, status: 200
  end

  def show

  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end

end
