Feature: Indicar duración de actividad
  Como persona que realiza actividades al aire libre, quiero indicar cuánto tiempo durará mi actividad, para considerar la duración de exposición en la recomendación.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-20 @EP-03 @acceptance
  Scenario: Registrar duración
    Given que la persona ha seleccionado una actividad
    When indica su duración
    Then el sistema guarda la duración seleccionada

  @US-20 @EP-03 @acceptance
  Scenario: Duración no válida
    Given que la persona no ha indicado una duración válida
    When intenta continuar
    Then el sistema solicita corregirla
