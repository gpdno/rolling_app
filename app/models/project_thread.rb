class ProjectThread < ActiveRecord::Base
    
    belongs_to :user
    has_many :project_tasks
  
end
