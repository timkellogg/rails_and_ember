class RemoveTasks < ActiveRecord::Migration
  def change
    drop_table :tasks
  end
end
