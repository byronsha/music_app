class AlbumsController < ApplicationController
  before_action :require_user!

  def new
    @album = Album.new
    @bands = Band.all
    render :new
  end

  def create
    @album = Album.new(album_params)
    @bands = Band.all

    if @album.save
      redirect_to bands_url
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    @bands = Band.all
    render :edit
  end

  def update
    @album = Album.find(params[:id])
    @bands = Band.all
    if @album.update_attributes(album_params)
      redirect_to bands_url
    else
      render :edit
    end
  end

  def show
    @album = Album.find(params[:id])
    @band = @album.band
    render :show
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to bands_url
  end

  def album_params
    params.require(:album).permit(:title, :band_id, :live_or_studio)
  end
end
