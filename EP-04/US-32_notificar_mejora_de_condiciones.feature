Feature: Notificar mejora de condiciones
  Como usuario, quiero recibir una notificación cuando las condiciones mejoren, para identificar cuándo podría ser conveniente retomar una actividad planificada.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-32 @EP-04 @acceptance
  Scenario: Mejora ambiental
    Given que las condiciones eran desfavorables
    When mejoran
    Then el sistema muestra una notificación de mejora

  @US-32 @EP-04 @acceptance
  Scenario: Consultar mejora
    Given que el usuario recibe la notificación
    When la selecciona
    Then el sistema muestra las nuevas condiciones
