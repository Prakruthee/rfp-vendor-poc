class RfpAnswersController < ApplicationController

  def index
    @rfp_answers = RfpAnswer.all
  end

  def new
    @rfp_request = RfpRequest.all
    @rfp_answer = RfpAnswer.new
  end

  def create
    @answer= RfpAnswer.new(request_params)
    if @answer.valid? && @answer.errors.blank?
      @answer.save
      redirect_to rfp_answers_path
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private

  def request_params
    params.require(:rfp_answer).permit(:answer)
  end
end
