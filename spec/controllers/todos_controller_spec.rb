require 'spec_helper'
require 'rails_helper'

describe TodosController do
  
  describe "GET new" do
    it "sets @item" do
      get :new
      expect(assigns(:todo)).to be_instance_of(Todo)
    end
  end
  
  describe "POST create" do
    it "creates the todo" do
      maine = List.create(name: "maine")
      post :create, todo: {list_id: maine.id, name: "eat in maine"}
      expect(Todo.count).to eq(1)
    end
  end
  
  describe "POST update_todos" do
    it "updates multiple todo items"
    it "redirects to the root_path" do
      list = List.create(name: "alabama")
      first = Todo.create(list_id: list.id, name: "visit the sign", checked: true)
      second = Todo.create(list_id: list.id, name: "visit the place", checked: false)
      post :update_todos, todos: [{id: first.id, checked: false}, {id: second.id, checked: true}]
      expect(Todo.first.checked).to be_falsey
      expect(Todo.last.checked).to be_truthy
    end
  end
end
