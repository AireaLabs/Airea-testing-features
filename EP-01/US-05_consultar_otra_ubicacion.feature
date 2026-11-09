Feature: Consultar otra ubicación
  Como usuario, quiero consultar la calidad del aire de otra ubicación de Lima Metropolitana, para comparar las condiciones antes de desplazarme.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-05 @EP-01 @acceptance
  Scenario: Seleccionar ubicación
    Given que el usuario desea consultar otra zona
    When selecciona una ubicación disponible
    Then el sistema muestra la calidad del aire de esa zona

  @US-05 @EP-01 @acceptance
  Scenario: Volver a ubicación actual
    Given que el usuario está consultando otra zona
    When selecciona regresar a su ubicación actual
    Then el sistema vuelve a mostrar sus condiciones ambientales
