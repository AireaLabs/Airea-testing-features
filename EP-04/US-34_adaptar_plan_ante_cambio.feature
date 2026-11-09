Feature: Adaptar plan ante cambio
  Como usuario, quiero recibir una recomendación cuando cambien las condiciones durante mi planificación, para adaptar mi actividad o desplazamiento.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-34 @EP-04 @acceptance
  Scenario: Modificar plan
    Given que el usuario tiene una actividad planificada
    When las condiciones empeoran
    Then el sistema recomienda modificar el plan

  @US-34 @EP-04 @acceptance
  Scenario: Mantener plan
    Given que las condiciones permanecen adecuadas
    When el usuario revisa nuevamente
    Then el sistema permite mantener el plan
