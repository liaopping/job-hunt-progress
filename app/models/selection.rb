class Selection < ApplicationRecord
  belongs_to :job_hunter
  belongs_to :company
  belongs_to :job_hunt_service
end
