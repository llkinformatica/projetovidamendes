require "application_system_test_case"

class AgendasTest < ApplicationSystemTestCase
  setup do
    @agenda = agendas(:one)
  end

  test "visiting the index" do
    visit agendas_url
    assert_selector "h1", text: "Agendas"
  end

  test "should create agenda" do
    visit agendas_url
    click_on "New agenda"

    fill_in "Datahora inicio", with: @agenda.datahora_inicio
    fill_in "Datahora termino", with: @agenda.datahora_termino
    fill_in "Descricao", with: @agenda.descricao
    fill_in "Link inscricao", with: @agenda.link_inscricao
    fill_in "Titulo", with: @agenda.titulo
    fill_in "Vagas", with: @agenda.vagas
    fill_in "Valor", with: @agenda.valor
    click_on "Create Agenda"

    assert_text "Agenda was successfully created"
    click_on "Back"
  end

  test "should update Agenda" do
    visit agenda_url(@agenda)
    click_on "Edit this agenda", match: :first

    fill_in "Datahora inicio", with: @agenda.datahora_inicio
    fill_in "Datahora termino", with: @agenda.datahora_termino
    fill_in "Descricao", with: @agenda.descricao
    fill_in "Link inscricao", with: @agenda.link_inscricao
    fill_in "Titulo", with: @agenda.titulo
    fill_in "Vagas", with: @agenda.vagas
    fill_in "Valor", with: @agenda.valor
    click_on "Update Agenda"

    assert_text "Agenda was successfully updated"
    click_on "Back"
  end

  test "should destroy Agenda" do
    visit agenda_url(@agenda)
    click_on "Destroy this agenda", match: :first

    assert_text "Agenda was successfully destroyed"
  end
end
