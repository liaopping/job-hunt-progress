class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    job_hunter_selections_path(job_hunter_id: current_job_hunter.id)
  end
end
