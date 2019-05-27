class RfpRequestsController < ApplicationController

  def index
    @rfp_request = RfpRequest.all
  end

  def new
    @rfp_request = RfpRequest.new
  end

  def create
    @request= RfpRequest.new(request_params)
    if @request.valid? && @request.errors.blank?
      @request.save
      redirect_to rfp_requests_path
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private

  def request_params
    params.require(:rfp_request).permit(:question)
  end
end
