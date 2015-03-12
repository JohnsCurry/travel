require 'spec_helper'
require 'rails_helper'

describe ListsController do
  
  describe "GET index" do
    it "sets @lists" do
      alabama = List.create(name: "Alabama")
      california = List.create(name: "california")
      get :index
      expect(assigns(:lists)).to match_array([alabama, california])
    end
  end
  
  describe "GET new" do
    it "sets @list" do
      get :new
      expect(assigns(:list)).to be_instance_of(List)
    end
  end
  
  
  describe "POST create" do
    context "with valid inputs" do
      it "redirects to root path" do
        post :create, list: {name: "Alabama"}
        expect(response).to redirect_to root_path
      end
      
      it "creates the list item" do
        post :create, list: {name: "Alabama"}
        expect(List.count).to eq(1)
      end
    end
    
    context "with invalid inputs" do
      it "does not create the list" do
        post :create, list: {name: ""}
        expect(List.count).to eq(0)
      end
      
      it "renders the new template" do
        post :create, list: {name: ""}
        expect(response).to render_template :new
      end
      
      it "sets @list" do
        post :create, list: {name: ""}
        expect(assigns(:list)).to be_instance_of(List)
      end
    end
  end
  
end

