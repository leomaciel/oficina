require 'spec_helper'

describe "mecanicos/show" do
  before(:each) do
    @mecanico = assign(:mecanico, stub_model(Mecanico,
      :nome => "Nome",
      :telefone => "Telefone",
      :especialidade => "Especialidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Especialidade/)
  end
end
