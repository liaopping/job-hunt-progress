class SelectionsController < ApplicationController
  before_action :authenticate_job_hunter!

  def index
    @selections = Selection.where(job_hunter_id: current_job_hunter.id).page(params[:page])
  end

  def show
    @selection = Selection.find(params[:id])
  end
end
