class SelectionsController < ApplicationController
  before_action :authenticate_job_hunter!

  def index
    @selections = Selection.where(job_hunter_id: current_job_hunter.id).page(params[:page])
  end

  def show
    @selection = Selection.find(params[:id])
  end

  def new
    @selection = Selection.new
  end

  def create
    company = Company.create(name: selection_params[:companies][:name])
    company.save!
    job_hunt_service = JobHuntService.create(name: selection_params[:job_hunt_services][:name])
    job_hunt_service.save!
    selection = Selection.create(
      job_hunter_id: selection_params[:job_hunter_id],
      company_id: Company.find_by(name: selection_params[:companies][:name]).id,
      job_hunt_service_id: JobHuntService.find_by(name: selection_params[:job_hunt_services][:name]).id,
      date_of_attended_company_information_session: selection_params[:date_of_attended_company_information_session],
      date_of_got_a_scout: selection_params[:date_of_got_a_scout],
      date_of_applied: selection_params[:date_of_applied],
      date_of_first_casual_interview: selection_params[:date_of_first_casual_interview],
      date_of_second_casual_interview: selection_params[:date_of_second_casual_interview],
      date_of_first_interview: selection_params[:date_of_first_interview],
      date_of_second_interview: selection_params[:date_of_second_interview],
      date_of_third_interview: selection_params[:date_of_third_interview],
      date_of_fourth_interview: selection_params[:date_of_fourth_interview],
      date_of_fifth_interview: selection_params[:date_of_fifth_interview],
      date_of_got_a_job: selection_params[:date_of_got_a_job],
      date_of_be_prayed: selection_params[:date_of_be_prayed],
      date_of_prayed: selection_params[:date_of_prayed]
      )
    selection.save!
    redirect_to job_hunter_selection_path(id: selection.id)
  end

  private

  def selection_params
    params.require(:selection).permit(:date_of_attended_company_information_session, :date_of_got_a_scout, :date_of_applied, :date_of_first_casual_interview, :date_of_second_casual_interview, :date_of_first_interview, :date_of_second_interview, :date_of_third_interview, :date_of_fourth_interview, :date_of_fifth_interview, :date_of_got_a_job, :date_of_be_prayed, :date_of_prayed, {companies: [:name, :id]}, {job_hunt_services: [:name, :id]}).merge(job_hunter_id: current_job_hunter.id)
  end
end
