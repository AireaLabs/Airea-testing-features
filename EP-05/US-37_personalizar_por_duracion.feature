Feature: Personalizar por duración
  Como usuario, quiero indicar la duración estimada de mi actividad, para que la recomendación considere el tiempo de exposición.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-37 @EP-05 @acceptance
  Scenario: Duración registrada
    Given que el usuario selecciona una actividad
    When indica su duración
    Then el sistema considera ese tiempo en la evaluación

  @US-37 @EP-05 @acceptance
  Scenario: Modificar duración
    Given que el usuario ya indicó una duración
    When la modifica
    Then el sistema actualiza la recomendación
