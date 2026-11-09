Feature: Consultar información de actualización
  Como usuario, quiero conocer con qué frecuencia se actualiza la información ambiental, para entender la vigencia de los datos que estoy consultando.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-50 @EP-08 @acceptance
  Scenario: Consultar actualización
    Given que el usuario está viendo información ambiental
    When consulta la información de actualización
    Then el sistema muestra cuándo fue actualizado el dato

  @US-50 @EP-08 @acceptance
  Scenario: Información no reciente
    Given que la información no se ha actualizado recientemente
    When el usuario consulta su vigencia
    Then el sistema indica que el dato no es reciente
