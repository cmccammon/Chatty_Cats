class RoomsController < ApplicationController
  def index
    rooms = Room.all
    render json: rooms.to_json, status: 200
  end

  def show
    if Room.exists?(params[:id])
      room = Room.find(params[:id])
      render json: room.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def chats
    if Room.exists?(params[:id])
      room = Room.find(params[:id])
      render json: room.chats.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def users
    if Room.exists?(params[:id])
      room = Room.find(params[:id])
      render json: room.users.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      err_msg = "The 'name' entry was empty or not found"
      render json: { err_msg: err_msg }, status: 422
    else
      room = Room.new
      room.name = params[:name]
      room.save
      render json: room, status: 201
    end
  end

  def update

  end

  def destroy
    if Room.exists?(params[:id])
      room = Room.find(params[:id])
      room.destroy
      render json: { message: "Room Deleted Successfully." }, status: 200
    else
      render json: { err_msg: 'No room found with that ID', id: params[:id] }.to_json, status: 404
    end
  end

end
