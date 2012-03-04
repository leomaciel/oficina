require 'spec_helper'

describe "servicos/new" do
  before(:each) do
    assign(:servico, stub_model(Servico,
      :data => "MyString",
      :valor => "MyString",
      :carro => nil
    ).as_new_record)
  end

  it "renders new servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servicos_path, :method => "post" do
      assert_select "input#servico_data", :name => "servico[data]"
      assert_select "input#servico_valor", :name => "servico[valor]"
      assert_select "input#servico_carro", :name => "servico[carro]"
    end
  end
end
