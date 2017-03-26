# README

1. User -Devise

  email:string
  password:string

  has_many :project_threads
  has_many :project_tasks

2. ProjectThread

  user_id:integer
  title:string

  belongs_to :user
  has_many :project_tasks

3. ProjecTask

  user_id:integer
  project_thread_id:integer
  body:text

  belongs_to :user
  belongs_to :project_thread