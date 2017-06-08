class RushingController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    if player_query
      @rushes = Rush.search(@player)
    else
      @rushes = Rush.all
    end

    @rushes = @rushes.order(@sort_column + " " + @sort_direction) if sort_column && sort_direction

    respond_to do |format|
      format.html
      format.csv { send_data @rushes.to_csv, filename: "rushing-info-#{Date.today}.csv" }
    end
  end

  private

  def sort_column
    @sort_column = params[:column] || @sort_column
  end

  def sort_direction
    @sort_direction = params[:direction] || @sort_direction
  end

  def player_query
    @player = params[:search] || @player
  end
end
