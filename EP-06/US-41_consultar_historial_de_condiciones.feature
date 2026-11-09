Feature: Consultar historial de condiciones
  Como usuario, quiero consultar el historial de calidad del aire de una ubicación, para conocer cómo han variado sus condiciones.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-41 @EP-06 @acceptance
  Scenario: Historial disponible
    Given que existe información histórica
    When el usuario consulta una ubicación
    Then el sistema muestra su historial

  @US-41 @EP-06 @acceptance
  Scenario: Sin historial suficiente
    Given que no existe información histórica suficiente
    When el usuario consulta la ubicación
    Then el sistema informa que no hay datos suficientes
