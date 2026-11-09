Feature: Ver estado de actualización
  Como usuario, quiero conocer cuándo se actualizó la información ambiental, para saber qué tan reciente es el dato que estoy consultando.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-31 @EP-04 @acceptance
  Scenario: Mostrar actualización
    Given que existe información ambiental disponible
    When el usuario consulta el estado
    Then el sistema muestra la fecha u hora de actualización

  @US-31 @EP-04 @acceptance
  Scenario: Información desactualizada
    Given que la información disponible no se ha actualizado recientemente
    When el usuario consulta el estado
    Then el sistema indica que el dato no es reciente
