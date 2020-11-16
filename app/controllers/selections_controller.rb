class SelectionsController < ApplicationController
  def index
    current_job_hunter_id = current_job_hunter.id
    @selections = Selection.where(job_hunter_id: current_job_hunter_id).page(params[:page])
  end

  def show
  end
end
