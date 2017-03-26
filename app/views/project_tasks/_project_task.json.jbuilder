json.extract! project_task, :id, :user_id, :project_thread_id, :body, :created_at, :updated_at
json.url project_task_url(project_task, format: :json)