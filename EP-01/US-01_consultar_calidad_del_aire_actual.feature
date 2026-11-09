Feature: Consultar calidad del aire actual
  Como usuario, quiero consultar la calidad del aire de mi ubicación actual, para conocer las condiciones ambientales antes de realizar una actividad.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-01 @EP-01 @acceptance
  Scenario: Consulta con ubicación disponible
    Given que el usuario permite utilizar su ubicación
    When ingresa a la pantalla principal
    Then el sistema muestra la calidad del aire correspondiente a su ubicación

  @US-01 @EP-01 @acceptance
  Scenario: Consulta después de actualizar
    Given que el usuario está visualizando la calidad del aire
    When solicita actualizar la información
    Then el sistema muestra el dato disponible más reciente
