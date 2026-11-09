Feature: Consultar fuente de información
  Como usuario, quiero conocer la fuente de los datos ambientales mostrados, para tener mayor confianza en la información que utilizo para decidir.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-48 @EP-08 @acceptance
  Scenario: Fuente disponible
    Given que el usuario está consultando información ambiental
    When solicita conocer su fuente
    Then el sistema muestra la fuente correspondiente

  @US-48 @EP-08 @acceptance
  Scenario: Cerrar fuente
    Given que el usuario está visualizando la fuente
    When cierra la información
    Then vuelve a la pantalla anterior
