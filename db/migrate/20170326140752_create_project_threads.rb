class CreateProjectThreads < ActiveRecord::Migration
  def change
    create_table :project_threads do |t|
      t.integer :user_id
      t.string :title

      t.timestamps null: false
    end
  end
end
