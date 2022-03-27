class RoomController < ApplicationController
  def index
    @room = Room.all
  end
  
  def new
    @room = Room.new
  end
  
  def create
    @room = Room.new(params.require[:room].paremit(:title,:fast_day,:last_day,:last_check))
    if @room.save
      redirect_to :room
    else
      render"new"
    end
  end
  
  def show
  end
  
  def edit
  end
  
  
  def update
  end
  
  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to :room
  end
end
