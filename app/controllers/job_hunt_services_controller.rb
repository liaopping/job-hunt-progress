class JobHuntServicesController < ApplicationController
  def index
    @job_hunt_services = JobHuntService.all.page(params[:page])
  end

  def show
  end
end
