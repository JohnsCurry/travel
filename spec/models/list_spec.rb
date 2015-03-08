require 'spec_helper'
require 'rails_helper'

describe List do
  it { should validate_presence_of(:name) }
  it { should have_many(:todos) }
  
  it "saves itself" do
    alabama = List.new(name: "Alabama")
    alabama.save
    expect(List.first).to eq(alabama)
  end
  
  it "has many items" do
    alabama = List.create(name: "Alabama")
    first = Todo.create(name: "take picture with Welcome to Alabama", list: alabama)
    second = Todo.create(name: "Eat lunch", list: alabama)
    expect(alabama.todos).to include(first, second)
  end
end

