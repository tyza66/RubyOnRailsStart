class PartialController < ActionController::Base
  before_action :set_event, :only => [ :show, :edit, :update, :destroy]

  def index
  end

  def show
    @events = Event.page(params[:page]).per(5)
  end

  private

  def set_event
    puts("giao")
  end
end