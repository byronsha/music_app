class TracksController < ApplicationController
  before_action :require_user!

  def new
    @track = Track.new
    @albums = Album.all
    render :new
  end

  def create
    @track = Track.new(track_params)
    @albums = Album.all

    if @track.save
      redirect_to bands_url
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
    @albums = Album.all
    render :edit
  end

  def update
    @track = Track.find(params[:id])
    @albums = Album.all
    if @track.update_attributes(track_params)
      redirect_to bands_url
    else
      render :edit
    end
  end

  def show
    @track = Track.find(params[:id])
    @album = @track.album
    render :show
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to bands_url
  end

  def track_params
    params.require(:track).permit(:title, :album_id, :bonus_or_regular, :lyrics)
  end
end
