class PartialController < ActionController::Base
  before_action :set_event, :only => [ :show, :edit, :update, :destroy]

  def index
  end

  def show
    flash[:notice] = "flash讯息在这里"
  end

  private

  def set_event
    puts("giao")
  end
end