Feature: Guardar lugares frecuentes
  Como usuario, quiero guardar lugares que consulto con frecuencia, para acceder rápidamente a sus condiciones ambientales.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-40 @EP-05 @acceptance
  Scenario: Guardar lugar
    Given que el usuario está consultando una ubicación
    When selecciona guardar
    Then el sistema registra el lugar entre sus ubicaciones frecuentes

  @US-40 @EP-05 @acceptance
  Scenario: Consultar lugar guardado
    Given que existe una ubicación guardada
    When el usuario la selecciona
    Then el sistema muestra sus condiciones actuales
