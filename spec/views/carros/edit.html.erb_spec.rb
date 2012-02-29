require 'spec_helper'

describe "carros/edit" do
  before(:each) do
    @carro = assign(:carro, stub_model(Carro,
      :modelo => "MyString",
      :placa => "MyString",
      :ano => "MyString",
      :cliente => nil
    ))
  end

  it "renders the edit carro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => carros_path(@carro), :method => "post" do
      assert_select "input#carro_modelo", :name => "carro[modelo]"
      assert_select "input#carro_placa", :name => "carro[placa]"
      assert_select "input#carro_ano", :name => "carro[ano]"
      assert_select "input#carro_cliente", :name => "carro[cliente]"
    end
  end
end
