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
end
