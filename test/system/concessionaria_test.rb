require "application_system_test_case"

class ConcessionariaTest < ApplicationSystemTestCase
  setup do
    @concessionarium = concessionaria(:one)
  end

  test "visiting the index" do
    visit concessionaria_url
    assert_selector "h1", text: "Concessionaria"
  end

  test "creating a Concessionarium" do
    visit concessionaria_url
    click_on "New Concessionarium"

    fill_in "Anos de mercado", with: @concessionarium.anos_de_mercado
    fill_in "Cidade", with: @concessionarium.cidade
    fill_in "Endereco", with: @concessionarium.endereco
    fill_in "Nome", with: @concessionarium.nome
    click_on "Create Concessionarium"

    assert_text "Concessionarium was successfully created"
    click_on "Back"
  end

  test "updating a Concessionarium" do
    visit concessionaria_url
    click_on "Edit", match: :first

    fill_in "Anos de mercado", with: @concessionarium.anos_de_mercado
    fill_in "Cidade", with: @concessionarium.cidade
    fill_in "Endereco", with: @concessionarium.endereco
    fill_in "Nome", with: @concessionarium.nome
    click_on "Update Concessionarium"

    assert_text "Concessionarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Concessionarium" do
    visit concessionaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Concessionarium was successfully destroyed"
  end
end
