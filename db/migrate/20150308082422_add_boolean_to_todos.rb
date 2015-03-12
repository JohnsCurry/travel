class AddBooleanToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :checked, :boolean, :default => false
  end
end
