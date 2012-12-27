class AidsController < ApplicationController
  def index
    @aids = Aid.order("sn ASC")
    @aid = Aid.first
  end

  def show
  	@aids = Aid.order("sn ASC")
    @aid = Aid.find(params[:id])
  end
end
