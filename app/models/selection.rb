class Selection < ApplicationRecord
  belongs_to :job_hunter, optional: true
  belongs_to :company, optional: true
  belongs_to :job_hunt_service, optional: true
  accepts_nested_attributes_for :job_hunter, :company, :job_hunt_service
end
