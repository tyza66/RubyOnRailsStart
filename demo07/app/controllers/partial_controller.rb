class PartialController < ActionController::Base
  before_action :set_event, :only => [ :show, :edit, :update, :destroy]

  def index
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end