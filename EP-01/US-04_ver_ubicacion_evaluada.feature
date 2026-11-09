Feature: Ver ubicación evaluada
  Como usuario, quiero identificar la zona sobre la que se muestran los datos de calidad del aire, para asegurarme de que la información corresponde al lugar donde me encuentro o deseo ir.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-04 @EP-01 @acceptance
  Scenario: Ubicación actual
    Given que el usuario consulta su ubicación actual
    When se muestran los datos ambientales
    Then el sistema muestra el nombre de la zona evaluada

  @US-04 @EP-01 @acceptance
  Scenario: Otra ubicación
    Given que el usuario selecciona otra ubicación
    When se actualiza la consulta
    Then el sistema muestra la zona seleccionada como referencia
