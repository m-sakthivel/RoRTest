class AddRoleIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :role_id, :integer
  end
end
