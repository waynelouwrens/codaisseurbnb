class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @themes = @room.themes
    @photos = @room.photos
  end

  def new
    @room = Room.new
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save
      image_params.each do |image|
        @room.photos.create(image: image)
      end

      redirect_to edit_room_path(@room), notice: "Room successfully created"
    else
      render :new
    end
  end

  def edit
    if current_user.id == @room.user.id
      @photos = @room.photos
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  def update
    if @room.update(room_params)
      image_params.each do |image|
        @room.photos.create(image: image)
      end

      redirect_to edit_room_path(@room), notice: "Room successfully updated"
    else
      render :edit
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:home_type, :room_type,
    :accommodate, :bedroom_count, :bathroom_count, :listing_name,
    :description, :address, :has_tv, :has_kitchen, :has_internet,
    :has_heating, :has_airco, :price, :active, theme_ids:[])
  end

  def image_params
    params[:photos].present? ? params.require(:photos) : []
  end

end
