# coding: utf-8

require 'spec_helper'


feature 'gerenciar sercico' do

  before :each do

  end

  

  scenario 'incluir servico' do
  

    carro = FactoryGirl.create(:carro,:placa => 'placa text')
    
    visit new_servico_path
    fill_in 'Data', :with => 'data text'
    fill_in 'Valor', :with => 'valor text'
    select 'placa text', :on => 'Placa'
        
    click_button 'Salvar'

    page.should have_content 'Data: data text'
    page.should have_content 'Valor: valor text'
    page.should have_content 'Placa: placa text'
  end

 
scenario 'alterar servico' do #, :javascript => true do

    carro = FactoryGirl.create(:carro,:placa => 'placa text')
    servico = FactoryGirl.create(:servico, :carro => carro)

    visit edit_servico_path(servico)

    preencher_e_verificar_servico

  end

  def preencher_e_verificar_servico

    fill_in 'Data', :with => 'data text'
    fill_in 'Valor', :with => 'valor text'
    select 'placa text', :on => 'Placa'

        
    click_button 'Salvar'
   
   
    page.should have_content 'Data: data text'
    page.should have_content 'Valor: valor text'
    page.should have_content 'Placa: placa text'

  end




end
