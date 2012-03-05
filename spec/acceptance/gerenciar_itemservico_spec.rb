# coding: utf-8

require 'spec_helper'


feature 'gerenciar itemservico' do

  before :each do

  end

  

  scenario 'incluir itemservico' do
  

    mecanico = FactoryGirl.create(:mecanico,:nome => 'mecanico text')
    servico = FactoryGirl.create(:servico,:data => 'data text')


    visit new_itemservico_path
    fill_in 'Nomeitem', :with => 'nomeitem text'
    fill_in 'Precoitem', :with => 'precoitem text'
    select 'mecanico text', :on => 'Nome'
    select 'data text', :on => 'Data'        

    click_button 'Salvar'

    page.should have_content 'Nomeitem: nomeitem text'
    page.should have_content 'Precoitem: precoitem text'
    page.should have_content 'Nome: mecanico text'
    page.should have_content 'Data: data text'

  end


  scenario 'alterar itemservico' do #, :javascript => true do
    
    servico = FactoryGirl.create(:servico,:data => 'data text')
    mecanico = FactoryGirl.create(:mecanico,:nome => 'mecanico text')
    itemservico = FactoryGirl.create(:itemservico, :mecanico => mecanico, :servico =>servico)

    visit edit_itemservico_path(itemservico)

    preencher_e_verificar_itemservico

  end



  def preencher_e_verificar_itemservico

   fill_in 'Nomeitem', :with => 'nomeitem text'
    fill_in 'Precoitem', :with => 'precoitem text'
    select 'mecanico text', :on => 'Nome'
    select 'data text', :on => 'Data'        

    click_button 'Salvar'

    page.should have_content 'Nomeitem: nomeitem text'
    page.should have_content 'Precoitem: precoitem text'
    page.should have_content 'Nome: mecanico text'
    page.should have_content 'Data: data text'

  end


end
