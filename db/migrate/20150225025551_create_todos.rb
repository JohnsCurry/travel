class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :list_id
      t.string  :name
    end
  end
end
