Feature: Recibir alerta para zona de interés
  Como usuario, quiero recibir alertas sobre una zona que consulto con frecuencia, para conocer oportunamente cambios que puedan afectar mi desplazamiento.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-30 @EP-04 @acceptance
  Scenario: Zona con cambio
    Given que el usuario tiene una zona guardada
    When sus condiciones cambian significativamente
    Then el sistema muestra una alerta

  @US-30 @EP-04 @acceptance
  Scenario: Zona sin cambios
    Given que la zona guardada mantiene sus condiciones
    When el usuario la consulta
    Then el sistema muestra su estado actual sin una alerta extraordinaria
