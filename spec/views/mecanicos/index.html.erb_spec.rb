require 'spec_helper'

describe "mecanicos/index" do
  before(:each) do
    assign(:mecanicos, [
      stub_model(Mecanico,
        :nome => "Nome",
        :telefone => "Telefone",
        :especialidade => "Especialidade"
      ),
      stub_model(Mecanico,
        :nome => "Nome",
        :telefone => "Telefone",
        :especialidade => "Especialidade"
      )
    ])
  end

  it "renders a list of mecanicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Especialidade".to_s, :count => 2
  end
end
