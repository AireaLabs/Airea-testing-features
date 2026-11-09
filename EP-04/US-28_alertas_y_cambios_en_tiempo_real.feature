Feature: Alertas y cambios en tiempo real
  Como usuario, quiero recibir una alerta cuando las condiciones ambientales cambien significativamente, para reaccionar oportunamente.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-28 @EP-04 @acceptance
  Scenario: Cambio desfavorable
    Given que el usuario tiene una consulta activa
    When las condiciones empeoran significativamente
    Then el sistema muestra una alerta

  @US-28 @EP-04 @acceptance
  Scenario: Consulta de alerta
    Given que el sistema mostró una alerta
    When el usuario la selecciona
    Then se muestran los detalles del cambio
