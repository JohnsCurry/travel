class TodosController < ApplicationController
  def index
    @lists = List.all
  end

  def update_todos
    Todo.all.each do |todo|
      todo.update_attributes(checked: false)
    end
    if params["todos"]
      params["todos"].each do |todo|
        item = Todo.find(todo["checked"])
        item.update_attributes(checked: true)
      end
    end
    redirect_to root_path
  end
  
  def new
    @todo = Todo.new
    @lists = List.all.map{|list| [list.name, list.id]}
  end
  
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = "Todo item added."
    else
      render :back
    end
    redirect_to root_path
  end
  
  private
  
  def todo_params
    params.require(:todo).permit!
  end
end
