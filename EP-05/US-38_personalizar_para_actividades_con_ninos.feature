Feature: Personalizar para actividades con niños
  Como padre o tutor de un niño en edad escolar, quiero indicar que realizaré una actividad con un menor, para recibir recomendaciones adecuadas a ese contexto.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-38 @EP-05 @acceptance
  Scenario: Actividad con menor
    Given que el padre o tutor está planificando una actividad
    When indica que participará un menor
    Then el sistema adapta la información presentada

  @US-38 @EP-05 @acceptance
  Scenario: Actividad sin menor
    Given que el usuario ya tiene configurado el contexto con menor
    When indica que la actividad no será con un menor
    Then el sistema actualiza el contexto
