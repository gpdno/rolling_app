class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.integer :user_id
      t.integer :project_thread_id
      t.text :body

      t.timestamps null: false
    end
  end
end
