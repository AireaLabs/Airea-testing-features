Feature: Recibir alerta durante actividad
  Como persona que realiza actividades al aire libre, quiero recibir una alerta cuando la calidad del aire empeore durante mi actividad, para decidir si debo modificar mi plan.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-29 @EP-04 @acceptance
  Scenario: Empeoramiento durante actividad
    Given que la persona está realizando una actividad
    When las condiciones empeoran
    Then el sistema muestra una alerta preventiva

  @US-29 @EP-04 @acceptance
  Scenario: Sin cambio relevante
    Given que la actividad continúa
    When las condiciones no presentan cambios relevantes
    Then el sistema no muestra una alerta extraordinaria
