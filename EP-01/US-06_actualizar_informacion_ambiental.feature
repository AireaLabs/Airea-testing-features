Feature: Actualizar información ambiental
  Como usuario, quiero actualizar la información de calidad del aire, para conocer las condiciones más recientes disponibles.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-06 @EP-01 @acceptance
  Scenario: Actualización correcta
    Given que el usuario está visualizando información ambiental
    When pulsa actualizar
    Then el sistema actualiza la información mostrada

  @US-06 @EP-01 @acceptance
  Scenario: Información sin cambios
    Given que no existen nuevos datos disponibles
    When el usuario pulsa actualizar
    Then el sistema mantiene la información e indica que continúa vigente
