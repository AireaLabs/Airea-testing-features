Feature: Planificar actividad física
  Como persona que realiza actividad física al aire libre, quiero evaluar las condiciones antes de comenzar, para decidir si mantengo, modifico o postergo mi actividad.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-27 @EP-03 @acceptance
  Scenario: Actividad adecuada
    Given que la persona selecciona una actividad física
    When las condiciones son favorables
    Then el sistema indica que puede realizarla

  @US-27 @EP-03 @acceptance
  Scenario: Actividad no recomendable
    Given que la persona selecciona una actividad física
    When las condiciones son desfavorables
    Then el sistema recomienda modificarla o postergarla
