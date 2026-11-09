Feature: Cerrar Sesión
  Como usuario registrado, quiero cerrar mi sesión, para finalizar el acceso a mi cuenta.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-47 @EP-07 @acceptance
  Scenario: Cerrar sesión correctamente
    Given que el usuario tiene una sesión activa
    When selecciona cerrar sesión
    Then el sistema finaliza la sesión

  @US-47 @EP-07 @acceptance
  Scenario: Cancelar cierre
    Given que el usuario selecciona cerrar sesión
    When decide cancelar la acción
    Then el sistema mantiene la sesión activa
