require 'spec_helper'
require 'rails_helper'


describe Todo do
  it {should belong_to(:list) }
  it {should validate_presence_of(:name) }
  it "saves itself" do
    alabama = List.create(name: "Alabama")
    todo = Todo.new(name: "Take selfie with 'Welcome to Alabama' sign", list: alabama)
    todo.save
    expect(Todo.first).to eq(todo)
  end
end
