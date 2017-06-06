class RushingController < ApplicationController
  def index
    @rushes = Rush.all
  end
end
