require 'spec_helper'

describe "carros/show" do
  before(:each) do
    @carro = assign(:carro, stub_model(Carro,
      :modelo => "Modelo",
      :placa => "Placa",
      :ano => "Ano",
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Modelo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Placa/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ano/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
