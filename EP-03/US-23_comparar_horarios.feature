Feature: Comparar horarios
  Como usuario, quiero comparar las condiciones de calidad del aire entre distintos horarios, para elegir un momento con menor exposición.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-23 @EP-03 @acceptance
  Scenario: Comparación favorable
    Given que existen diferentes horarios disponibles
    When el usuario los compara
    Then el sistema muestra sus respectivas condiciones

  @US-23 @EP-03 @acceptance
  Scenario: Identificar mejor horario
    Given que un horario presenta mejores condiciones
    When el usuario revisa la comparación
    Then el sistema permite identificarlo
