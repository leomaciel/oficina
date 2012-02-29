require 'spec_helper'

describe "carros/new" do
  before(:each) do
    assign(:carro, stub_model(Carro,
      :modelo => "MyString",
      :placa => "MyString",
      :ano => "MyString",
      :cliente => nil
    ).as_new_record)
  end

  it "renders new carro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => carros_path, :method => "post" do
      assert_select "input#carro_modelo", :name => "carro[modelo]"
      assert_select "input#carro_placa", :name => "carro[placa]"
      assert_select "input#carro_ano", :name => "carro[ano]"
      assert_select "input#carro_cliente", :name => "carro[cliente]"
    end
  end
end
