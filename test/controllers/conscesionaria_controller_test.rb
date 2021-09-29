require "test_helper"

class ConscesionariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conscesionarium = conscesionaria(:one)
  end

  test "should get index" do
    get conscesionaria_url
    assert_response :success
  end

  test "should get new" do
    get new_conscesionarium_url
    assert_response :success
  end

  test "should create conscesionarium" do
    assert_difference('Conscesionarium.count') do
      post conscesionaria_url, params: { conscesionarium: { anos_de_mercado: @conscesionarium.anos_de_mercado, cidade: @conscesionarium.cidade, endereco: @conscesionarium.endereco, nome: @conscesionarium.nome } }
    end

    assert_redirected_to conscesionarium_url(Conscesionarium.last)
  end

  test "should show conscesionarium" do
    get conscesionarium_url(@conscesionarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_conscesionarium_url(@conscesionarium)
    assert_response :success
  end

  test "should update conscesionarium" do
    patch conscesionarium_url(@conscesionarium), params: { conscesionarium: { anos_de_mercado: @conscesionarium.anos_de_mercado, cidade: @conscesionarium.cidade, endereco: @conscesionarium.endereco, nome: @conscesionarium.nome } }
    assert_redirected_to conscesionarium_url(@conscesionarium)
  end

  test "should destroy conscesionarium" do
    assert_difference('Conscesionarium.count', -1) do
      delete conscesionarium_url(@conscesionarium)
    end

    assert_redirected_to conscesionaria_url
  end
end
