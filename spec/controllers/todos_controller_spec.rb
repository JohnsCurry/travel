require 'spec_helper'
require 'rails_helper'

describe TodosController do
  
  describe "GET new" do
    it "sets @item" do
      get :new
      expect(assigns(:todo)).to be_instance_of(Todo)
    end
  end
end
