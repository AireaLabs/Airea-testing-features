Feature: Visualizar tendencia del aire
  Como usuario, quiero visualizar cómo ha variado recientemente la calidad del aire, para identificar si las condiciones están mejorando o empeorando.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-07 @EP-01 @acceptance
  Scenario: Tendencia disponible
    Given que existen datos históricos recientes
    When el usuario consulta la tendencia
    Then el sistema muestra la variación de la calidad del aire

  @US-07 @EP-01 @acceptance
  Scenario: Variación desfavorable
    Given que la calidad del aire ha empeorado recientemente
    When el usuario consulta la tendencia
    Then el sistema indica la tendencia desfavorable
