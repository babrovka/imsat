class AidsController < ApplicationController
  def index
    @aids = Aid.published.order("sn ASC")
    @aid = Aid.published.first
  end

  def show
  	@aids = Aid.published.order("sn ASC")
    @aid = Aid.find(params[:id])
  end
end
