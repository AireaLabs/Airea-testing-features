Feature: Seleccionar horario
  Como persona que realiza actividades al aire libre, quiero indicar el horario previsto de mi actividad, para evaluar si las condiciones son adecuadas en ese momento.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-21 @EP-03 @acceptance
  Scenario: Horario disponible
    Given que la persona está planificando una actividad
    When selecciona un horario
    Then el sistema lo registra para la evaluación

  @US-21 @EP-03 @acceptance
  Scenario: Modificar horario
    Given que la persona ya seleccionó un horario
    When selecciona otro
    Then el sistema actualiza la planificación
