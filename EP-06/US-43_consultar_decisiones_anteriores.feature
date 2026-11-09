Feature: Consultar decisiones anteriores
  Como usuario, quiero revisar las recomendaciones recibidas anteriormente, para conocer qué decisiones tomé frente a determinadas condiciones.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-43 @EP-06 @acceptance
  Scenario: Mostrar recomendaciones anteriores
    Given que el usuario tiene recomendaciones registradas
    When consulta su historial
    Then el sistema muestra las recomendaciones anteriores

  @US-43 @EP-06 @acceptance
  Scenario: Consultar detalle
    Given que existe una recomendación anterior
    When el usuario la selecciona
    Then el sistema muestra la condición y decisión asociada
