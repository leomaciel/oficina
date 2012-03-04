# coding: utf-8

require 'spec_helper'


feature 'gerenciar mecanico' do

  before :each do

  end

  

  scenario 'incluir mecanico' do
  visit new_cliente_path

    fill_in 'Nome', :with => 'mecanico text'
    fill_in 'Telefone', :with => 'telefone text'

        	
    click_button 'Salvar'

    page.should have_content 'Nome: mecanico text'
    page.should have_content 'Telefone: telefone text'


  end

  scenario 'alterar mecanico' do #, :javascript => true  do

    mecanico = FactoryGirl.create(:mecanico)

    visit edit_mecanico_path(mecanico)

    fill_in 'Nome', :with => 'mecanico alterado'
    fill_in 'Telefone', :with => 'telefone alterado'
    fill_in 'Especialidade', :with => 'especialidade alterado'

        
    click_button 'Salvar'

    page.should have_content 'Nome: mecanico alterado'
    page.should have_content 'Telefone: telefone alterado'
    page.should have_content 'Especialidade: especialidade alterado'



end
end
