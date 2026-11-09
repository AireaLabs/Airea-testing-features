Feature: Comparar rutas
  Como usuario, quiero comparar las condiciones ambientales de diferentes rutas, para seleccionar una alternativa con menor exposición.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-24 @EP-03 @acceptance
  Scenario: Mostrar rutas
    Given que existen alternativas para un desplazamiento
    When el usuario las consulta
    Then el sistema muestra sus condiciones ambientales

  @US-24 @EP-03 @acceptance
  Scenario: Seleccionar ruta
    Given que el usuario compara las alternativas
    When selecciona una ruta
    Then el sistema la establece como opción elegida
