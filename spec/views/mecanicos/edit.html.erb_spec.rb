require 'spec_helper'

describe "mecanicos/edit" do
  before(:each) do
    @mecanico = assign(:mecanico, stub_model(Mecanico,
      :nome => "MyString",
      :telefone => "MyString",
      :especialidade => "MyString"
    ))
  end

  it "renders the edit mecanico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mecanicos_path(@mecanico), :method => "post" do
      assert_select "input#mecanico_nome", :name => "mecanico[nome]"
      assert_select "input#mecanico_telefone", :name => "mecanico[telefone]"
      assert_select "input#mecanico_especialidade", :name => "mecanico[especialidade]"
    end
  end
end
