require 'spec_helper'

describe "itemservicos/index" do
  before(:each) do
    assign(:itemservicos, [
      stub_model(Itemservico,
        :nomeitem => "Nomeitem",
        :precoitem => "Precoitem",
        :mecanico => nil,
        :servico => nil
      ),
      stub_model(Itemservico,
        :nomeitem => "Nomeitem",
        :precoitem => "Precoitem",
        :mecanico => nil,
        :servico => nil
      )
    ])
  end

  it "renders a list of itemservicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomeitem".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Precoitem".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
