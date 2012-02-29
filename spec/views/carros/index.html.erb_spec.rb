require 'spec_helper'

describe "carros/index" do
  before(:each) do
    assign(:carros, [
      stub_model(Carro,
        :modelo => "Modelo",
        :placa => "Placa",
        :ano => "Ano",
        :cliente => nil
      ),
      stub_model(Carro,
        :modelo => "Modelo",
        :placa => "Placa",
        :ano => "Ano",
        :cliente => nil
      )
    ])
  end

  it "renders a list of carros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Modelo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
