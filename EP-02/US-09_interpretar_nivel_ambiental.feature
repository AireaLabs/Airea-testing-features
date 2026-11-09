Feature: Interpretar nivel ambiental
  Como usuario, quiero conocer qué significa el nivel de calidad del aire mostrado, para interpretar la información sin depender de conocimientos técnicos.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-09 @EP-02 @acceptance
  Scenario: Consultar significado
    Given que el usuario visualiza un nivel ambiental
    When solicita información sobre su significado
    Then el sistema muestra una explicación sencilla

  @US-09 @EP-02 @acceptance
  Scenario: Cerrar explicación
    Given que el usuario está consultando la explicación
    When la cierra
    Then vuelve a visualizar el estado ambiental
