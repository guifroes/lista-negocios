require "application_system_test_case"

class NegociosTest < ApplicationSystemTestCase
  setup do
    @negocio = negocios(:one)
  end

  test "visiting the index" do
    visit negocios_url
    assert_selector "h1", text: "Negocios"
  end

  test "creating a Negocio" do
    visit negocios_url
    click_on "New Negocio"

    fill_in "Descricao", with: @negocio.descricao
    fill_in "Nome", with: @negocio.nome
    fill_in "Site", with: @negocio.site
    click_on "Create Negocio"

    assert_text "Negocio was successfully created"
    click_on "Back"
  end

  test "updating a Negocio" do
    visit negocios_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @negocio.descricao
    fill_in "Nome", with: @negocio.nome
    fill_in "Site", with: @negocio.site
    click_on "Update Negocio"

    assert_text "Negocio was successfully updated"
    click_on "Back"
  end

  test "destroying a Negocio" do
    visit negocios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Negocio was successfully destroyed"
  end
end
