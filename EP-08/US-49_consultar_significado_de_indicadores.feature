Feature: Consultar significado de indicadores
  Como usuario, quiero consultar el significado de los indicadores y niveles utilizados por Airea, para interpretar correctamente la información presentada.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-49 @EP-08 @acceptance
  Scenario: Consultar indicador
    Given que el usuario observa un indicador
    When solicita su significado
    Then el sistema muestra una explicación sencilla

  @US-49 @EP-08 @acceptance
  Scenario: Consultar otro indicador
    Given que el usuario está viendo la explicación
    When selecciona otro indicador
    Then el sistema muestra su significado
