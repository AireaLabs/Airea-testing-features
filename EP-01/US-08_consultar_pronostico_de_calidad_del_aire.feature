Feature: Consultar pronóstico de calidad del aire
  Como usuario, quiero consultar la condición esperada de la calidad del aire para las próximas horas, para planificar una actividad con anticipación.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-08 @EP-01 @acceptance
  Scenario: Pronóstico disponible
    Given que existe información de las próximas horas
    When el usuario consulta el pronóstico
    Then el sistema muestra las condiciones previstas

  @US-08 @EP-01 @acceptance
  Scenario: Horario favorable
    Given que existen diferentes condiciones previstas
    When el usuario consulta el pronóstico
    Then el sistema permite identificar el horario con mejores condiciones
