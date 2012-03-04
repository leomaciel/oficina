require 'spec_helper'

describe "servicos/edit" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :data => "MyString",
      :valor => "MyString",
      :carro => nil
    ))
  end

  it "renders the edit servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servicos_path(@servico), :method => "post" do
      assert_select "input#servico_data", :name => "servico[data]"
      assert_select "input#servico_valor", :name => "servico[valor]"
      assert_select "input#servico_carro", :name => "servico[carro]"
    end
  end
end
