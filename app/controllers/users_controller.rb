class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.to_json, status: 200
  end

  def show
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render json: user.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end
  def profile
    if User.exists?(params[:id])
      profile = User.where(id:params[:id]).select("name, username, email")
      render json: profile.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def new
    empty = User.new
    render json: empty, status: 200
  end

  def create
    if params[:name].nil? || params[:name].empty?
      err_msg = "The 'name' entry was empty or not found"
      render json: { err_msg: err_msg }, status: 422
    else
      user = User.new
      user.name = params[:name]
      user.username = params.fetch(:username)
      user.email  = params.fetch(:email )
      user.about = params.fetch(:about)
      user.save
      render json: user, status: 201
    end
  end

  def update

  end

  def destroy

  end
end
