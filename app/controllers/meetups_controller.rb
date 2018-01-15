class MeetupsController < ApplicationController
  def show
    @meetup = Meetup.find(params[:id])
  end

  def index
    @meetups = Meetup.order("created_at DESC").all
  end

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)
    if @meetup.save
      flash[:notice] = "Meetup successfully created."
      redirect_to meetups_path
    else
      render :new
    end
  end

  protected
  def meetup_params
    params.require(:meetup).permit(:name, :description, :city, :state)
  end
end