require 'spec_helper'

describe "servicos/show" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :data => "Data",
      :valor => "Valor",
      :carro => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Valor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
