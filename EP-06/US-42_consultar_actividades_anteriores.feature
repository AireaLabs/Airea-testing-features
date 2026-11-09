Feature: Consultar actividades anteriores
  Como persona que realiza actividades al aire libre, quiero revisar las actividades que he evaluado anteriormente, para recordar las condiciones consideradas.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-42 @EP-06 @acceptance
  Scenario: Historial de actividades
    Given que el usuario ha evaluado actividades anteriormente
    When consulta su historial
    Then el sistema muestra las actividades registradas

  @US-42 @EP-06 @acceptance
  Scenario: Seleccionar actividad anterior
    Given que existe una actividad registrada
    When el usuario la selecciona
    Then el sistema muestra sus detalles
