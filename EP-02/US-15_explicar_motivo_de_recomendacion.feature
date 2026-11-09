Feature: Explicar motivo de recomendación
  Como usuario, quiero conocer el motivo de una recomendación, para entender cómo la condición ambiental influye en mi decisión.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-15 @EP-02 @acceptance
  Scenario: Consultar motivo
    Given que el sistema muestra una recomendación
    When el usuario solicita conocer el motivo
    Then el sistema muestra una explicación relacionada con las condiciones ambientales

  @US-15 @EP-02 @acceptance
  Scenario: Cerrar motivo
    Given que el usuario está viendo la explicación
    When la cierra
    Then vuelve a la recomendación principal
