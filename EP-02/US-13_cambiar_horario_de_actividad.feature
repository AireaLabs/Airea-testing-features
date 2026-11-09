Feature: Cambiar horario de actividad
  Como persona que realiza actividades al aire libre, quiero recibir una recomendación para cambiar el horario de mi actividad, para realizarla en un momento con condiciones más favorables.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-13 @EP-02 @acceptance
  Scenario: Horario alternativo
    Given que el horario elegido presenta condiciones desfavorables
    When existen mejores condiciones en otro horario
    Then el sistema recomienda cambiar la hora

  @US-13 @EP-02 @acceptance
  Scenario: Horario adecuado
    Given que el horario elegido presenta buenas condiciones
    When el usuario consulta su actividad
    Then el sistema indica que puede mantener ese horario
