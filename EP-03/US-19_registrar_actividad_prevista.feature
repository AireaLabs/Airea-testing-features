Feature: Registrar actividad prevista
  Como persona que realiza actividades al aire libre, quiero indicar qué actividad realizaré, para recibir información relacionada con mi situación.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-19 @EP-03 @acceptance
  Scenario: Seleccionar actividad
    Given que la persona está planificando una actividad
    When selecciona el tipo de actividad
    Then el sistema registra la actividad seleccionada

  @US-19 @EP-03 @acceptance
  Scenario: Continuar sin actividad
    Given que la persona no ha seleccionado una actividad
    When intenta continuar
    Then el sistema solicita seleccionar una actividad
