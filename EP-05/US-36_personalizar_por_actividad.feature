Feature: Personalizar por actividad
  Como persona que realiza actividades al aire libre, quiero seleccionar el tipo de actividad que realizaré, para obtener recomendaciones relacionadas con ella.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-36 @EP-05 @acceptance
  Scenario: Seleccionar actividad
    Given que la persona está planificando una actividad
    When selecciona el tipo de actividad
    Then el sistema utiliza esa información para la recomendación

  @US-36 @EP-05 @acceptance
  Scenario: Cambiar actividad
    Given que ya existe una actividad seleccionada
    When la persona selecciona otra
    Then el sistema actualiza la recomendación
