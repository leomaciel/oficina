require 'spec_helper'

describe "itemservicos/edit" do
  before(:each) do
    @itemservico = assign(:itemservico, stub_model(Itemservico,
      :nomeitem => "MyString",
      :precoitem => "MyString",
      :mecanico => nil,
      :servico => nil
    ))
  end

  it "renders the edit itemservico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itemservicos_path(@itemservico), :method => "post" do
      assert_select "input#itemservico_nomeitem", :name => "itemservico[nomeitem]"
      assert_select "input#itemservico_precoitem", :name => "itemservico[precoitem]"
      assert_select "input#itemservico_mecanico", :name => "itemservico[mecanico]"
      assert_select "input#itemservico_servico", :name => "itemservico[servico]"
    end
  end
end
