class ProjectTask < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :project_thread
  
end
