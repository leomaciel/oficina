require 'spec_helper'

describe "mecanicos/new" do
  before(:each) do
    assign(:mecanico, stub_model(Mecanico,
      :nome => "MyString",
      :telefone => "MyString",
      :especialidade => "MyString"
    ).as_new_record)
  end

  it "renders new mecanico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mecanicos_path, :method => "post" do
      assert_select "input#mecanico_nome", :name => "mecanico[nome]"
      assert_select "input#mecanico_telefone", :name => "mecanico[telefone]"
      assert_select "input#mecanico_especialidade", :name => "mecanico[especialidade]"
    end
  end
end
