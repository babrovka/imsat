class AidsController < ApplicationController
  def index
    @aids = Aid.all
    @aid = Aid.first
  end

  def show
  	@aids = Aid.all
    @aid = Aid.find(params[:id])
  end
end
