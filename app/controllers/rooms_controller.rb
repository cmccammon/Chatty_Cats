class RoomsController < ApplicationController
  def index
    rooms = Room.all
    render json: rooms.to_json, status: 200
  end

  def show
    if Room.exists?(params[:id])
      room = room.find(params[:id])
      render json: room.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
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
