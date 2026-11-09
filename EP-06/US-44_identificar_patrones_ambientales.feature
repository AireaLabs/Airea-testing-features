Feature: Identificar patrones ambientales
  Como usuario, quiero visualizar patrones recientes de calidad del aire en mis ubicaciones frecuentes, para reconocer momentos con mejores o peores condiciones.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-44 @EP-06 @acceptance
  Scenario: Patrón identificable
    Given que existe información suficiente
    When el usuario consulta una ubicación frecuente
    Then el sistema muestra su comportamiento reciente

  @US-44 @EP-06 @acceptance
  Scenario: Falta de información
    Given que no existe información suficiente
    When el usuario consulta el patrón
    Then el sistema informa que todavía no puede mostrarlo
