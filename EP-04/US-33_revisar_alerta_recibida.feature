Feature: Revisar alerta recibida
  Como usuario, quiero consultar nuevamente los detalles de una alerta recibida, para comprender qué cambió y qué acción preventiva se recomienda.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-33 @EP-04 @acceptance
  Scenario: Abrir alerta
    Given que el usuario recibió una alerta
    When selecciona la alerta
    Then el sistema muestra sus detalles

  @US-33 @EP-04 @acceptance
  Scenario: Consultar recomendación
    Given que el usuario está viendo los detalles
    When consulta la recomendación
    Then el sistema muestra la acción preventiva asociada
