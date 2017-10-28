class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    room_params = params.require(:room).permit(:home_type, :room_type,
    :accommodate, :bedroom_count, :bathroom_count, :listing_name,
    :description, :address, :has_tv, :has_kitchen, :has_internet,
    :has_heating, :has_airco, :price, :active )

    if @room.save
      redirect_to @room
    else
      render 'new'
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])

    room_params = params.require(:room).permit(:home_type, :room_type,
    :accommodate, :bedroom_count, :bathroom_count, :listing_name,
    :description, :address, :has_tv, :has_kitchen, :has_internet,
    :has_heating, :has_airco, :price, :active )

    if @room.update_attributes(room_params)
      redirect_to @room
    else
      render 'edit'
    end
  end
end
