Feature: Planificar desplazamiento
  Como usuario, quiero indicar que realizaré un desplazamiento, para considerar la calidad del aire durante mi recorrido.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-22 @EP-03 @acceptance
  Scenario: Registrar desplazamiento
    Given que el usuario desea desplazarse
    When indica origen y destino
    Then el sistema prepara la evaluación del recorrido

  @US-22 @EP-03 @acceptance
  Scenario: Modificar destino
    Given que el usuario ya registró un destino
    When selecciona otro
    Then el sistema actualiza el desplazamiento
