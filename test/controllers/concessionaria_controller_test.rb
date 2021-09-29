require "test_helper"

class ConcessionariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concessionarium = concessionaria(:one)
  end

  test "should get index" do
    get concessionaria_url
    assert_response :success
  end

  test "should get new" do
    get new_concessionarium_url
    assert_response :success
  end

  test "should create concessionarium" do
    assert_difference('Concessionarium.count') do
      post concessionaria_url, params: { concessionarium: { anos_de_mercado: @concessionarium.anos_de_mercado, cidade: @concessionarium.cidade, endereco: @concessionarium.endereco, nome: @concessionarium.nome } }
    end

    assert_redirected_to concessionarium_url(Concessionarium.last)
  end

  test "should show concessionarium" do
    get concessionarium_url(@concessionarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_concessionarium_url(@concessionarium)
    assert_response :success
  end

  test "should update concessionarium" do
    patch concessionarium_url(@concessionarium), params: { concessionarium: { anos_de_mercado: @concessionarium.anos_de_mercado, cidade: @concessionarium.cidade, endereco: @concessionarium.endereco, nome: @concessionarium.nome } }
    assert_redirected_to concessionarium_url(@concessionarium)
  end

  test "should destroy concessionarium" do
    assert_difference('Concessionarium.count', -1) do
      delete concessionarium_url(@concessionarium)
    end

    assert_redirected_to concessionaria_url
  end
end
