require "application_system_test_case"

class ConscesionariaTest < ApplicationSystemTestCase
  setup do
    @conscesionarium = conscesionaria(:one)
  end

  test "visiting the index" do
    visit conscesionaria_url
    assert_selector "h1", text: "Conscesionaria"
  end

  test "creating a Conscesionarium" do
    visit conscesionaria_url
    click_on "New Conscesionarium"

    fill_in "Anos de mercado", with: @conscesionarium.anos_de_mercado
    fill_in "Cidade", with: @conscesionarium.cidade
    fill_in "Endereco", with: @conscesionarium.endereco
    fill_in "Nome", with: @conscesionarium.nome
    click_on "Create Conscesionarium"

    assert_text "Conscesionarium was successfully created"
    click_on "Back"
  end

  test "updating a Conscesionarium" do
    visit conscesionaria_url
    click_on "Edit", match: :first

    fill_in "Anos de mercado", with: @conscesionarium.anos_de_mercado
    fill_in "Cidade", with: @conscesionarium.cidade
    fill_in "Endereco", with: @conscesionarium.endereco
    fill_in "Nome", with: @conscesionarium.nome
    click_on "Update Conscesionarium"

    assert_text "Conscesionarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Conscesionarium" do
    visit conscesionaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conscesionarium was successfully destroyed"
  end
end
