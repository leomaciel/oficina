# coding: utf-8

require 'spec_helper'


feature 'gerenciar cliente' do

  before :each do

  end

  

  scenario 'incluir cliente' do
  visit new_cliente_path

    fill_in 'Nome', :with => 'cliente text'
    fill_in 'Telefone', :with => 'telefone text'
    fill_in 'Endereco', :with => 'endereco text'

        
    click_button 'Salvar'

    page.should have_content 'Nome: cliente text'
    page.should have_content 'Telefone: telefone text'
    page.should have_content 'Endereco: endereco text'

  end



 scenario 'alterar cliente' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    fill_in 'Nome', :with => 'cliente alterado'
    fill_in 'Telefone', :with => 'telefone alterado'
    fill_in 'Endereco', :with => 'endereco alterado'

        
    click_button 'Salvar'

    page.should have_content 'Nome: cliente alterado'
    page.should have_content 'Telefone: telefone alterado'
    page.should have_content 'Endereco: endereco alterado'       
   

  end
end
