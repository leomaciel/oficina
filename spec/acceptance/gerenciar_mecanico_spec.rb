# coding: utf-8

require 'spec_helper'


feature 'gerenciar mecanico' do

  before :each do

  end

  

  scenario 'incluir mecanico' do
  visit new_cliente_path

    fill_in 'Nome', :with => 'cliente text'
    fill_in 'Telefone', :with => 'telefone text'

        	
    click_button 'Salvar'

    page.should have_content 'Nome: cliente text'
    page.should have_content 'Telefone: telefone text'


  end



end
