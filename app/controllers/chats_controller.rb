class ChatsController < ApplicationController
  def index
    chats = Chat.all
      render json: chats.to_json, status: 200
  end

  def show
    if Chat.exists?(params[:id])
      chat = chat.find(params[:id])
      render json: chat.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def new
    empty = Chat.new
    render json: empty, status: 200
  end

  def create
    if params[:message].nil? || params[:message].empty?
      err_msg = "The message field was empty or not found"
      render json: { err_msg: err_msg }, status: 422
    else
      chat = Chat.new
      chat.message = params.fetch(:message)
      chat.user_id = params.fetch(:user_id)
      chat.room_id = params.fetch(:room_id)
      chat.save
      render json: chat, status: 201
    end
  end

  def update

  end

  def destroy

  end

end
