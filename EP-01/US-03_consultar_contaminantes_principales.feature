Feature: Consultar contaminantes principales
  Como usuario, quiero consultar los principales contaminantes presentes en el aire, para comprender qué factores están influyendo en la condición ambiental.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-03 @EP-01 @acceptance
  Scenario: Visualización de contaminantes
    Given que existe información disponible sobre contaminantes
    When el usuario consulta el detalle ambiental
    Then el sistema muestra los principales contaminantes registrados

  @US-03 @EP-01 @acceptance
  Scenario: Sin información adicional
    Given que no existe información detallada disponible
    When el usuario consulta los contaminantes
    Then el sistema informa que no hay datos adicionales disponibles
