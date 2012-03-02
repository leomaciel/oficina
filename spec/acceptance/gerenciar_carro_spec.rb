# coding: utf-8

require 'spec_helper'


feature 'gerenciar carro' do

  before :each do

  end

  

  scenario 'incluir carro' do
  

    cliente = FactoryGirl.create(:cliente,:nome => 'cliente text')
    
    visit new_carro_path
    fill_in 'Modelo', :with => 'modelo text'
    fill_in 'Placa', :with => 'placa text'
    fill_in 'Ano', :with => 'ano text'
    select 'cliente text', :on => 'Nome'
        
    click_button 'Salvar'

    page.should have_content 'Modelo: modelo text'
    page.should have_content 'Placa: placa text'
    page.should have_content 'Ano: ano text'
    page.should have_content 'Nome: cliente text'
  end

   scenario 'alterar carro' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente,:nome => 'cliente text')
    carro = FactoryGirl.create(:carro, :cliente => cliente)

    visit edit_carro_path(carro)

    preencher_e_verificar_carro

  end

   scenario 'Excluir carro' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente,:nome => 'cliente text')
    carro = FactoryGirl.create(:carro, :cliente => cliente)

    visit carros_path
    click_link 'Excluir'

end

  

 
  def preencher_e_verificar_carro

    fill_in 'Modelo', :with => 'modelo text'
    fill_in 'Placa', :with => 'placa text'
    fill_in 'Ano', :with => 'ano text'
    select 'cliente text', :on => 'Nome'
        
    click_button 'Salvar'
   
   
   page.should have_content 'Modelo: modelo text'
    page.should have_content 'Placa: placa text'
    page.should have_content 'Ano: ano text'
    page.should have_content 'Nome: cliente text'

  end


end

