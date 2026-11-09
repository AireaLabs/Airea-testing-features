Feature: Recomendar ruta alternativa
  Como usuario, quiero recibir una alternativa de ruta cuando exista una opción con condiciones ambientales más favorables, para reducir mi exposición durante el desplazamiento.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-25 @EP-03 @acceptance
  Scenario: Ruta alternativa disponible
    Given que la ruta actual presenta condiciones desfavorables
    When existe una alternativa con mejores condiciones
    Then el sistema recomienda la ruta alternativa

  @US-25 @EP-03 @acceptance
  Scenario: Sin alternativa disponible
    Given que no existe una ruta con mejores condiciones
    When el usuario consulta las alternativas
    Then el sistema informa que no se identificó una opción mejor
