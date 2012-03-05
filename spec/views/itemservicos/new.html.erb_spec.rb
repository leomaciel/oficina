require 'spec_helper'

describe "itemservicos/new" do
  before(:each) do
    assign(:itemservico, stub_model(Itemservico,
      :nomeitem => "MyString",
      :precoitem => "MyString",
      :mecanico => nil,
      :servico => nil
    ).as_new_record)
  end

  it "renders new itemservico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itemservicos_path, :method => "post" do
      assert_select "input#itemservico_nomeitem", :name => "itemservico[nomeitem]"
      assert_select "input#itemservico_precoitem", :name => "itemservico[precoitem]"
      assert_select "input#itemservico_mecanico", :name => "itemservico[mecanico]"
      assert_select "input#itemservico_servico", :name => "itemservico[servico]"
    end
  end
end
