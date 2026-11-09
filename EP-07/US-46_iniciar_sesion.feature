Feature: Iniciar sesión
  Como usuario registrado, quiero iniciar sesión en Airea, para acceder a mis lugares y preferencias guardadas.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-46 @EP-07 @acceptance
  Scenario: Credenciales correctas
    Given que el usuario tiene una cuenta registrada
    When ingresa credenciales válidas
    Then el sistema permite acceder a su cuenta

  @US-46 @EP-07 @acceptance
  Scenario: Credenciales incorrectas
    Given que las credenciales no coinciden
    When el usuario intenta iniciar sesión
    Then el sistema informa que los datos no son correctos
