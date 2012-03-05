require 'spec_helper'

describe "itemservicos/show" do
  before(:each) do
    @itemservico = assign(:itemservico, stub_model(Itemservico,
      :nomeitem => "Nomeitem",
      :precoitem => "Precoitem",
      :mecanico => nil,
      :servico => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomeitem/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Precoitem/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
