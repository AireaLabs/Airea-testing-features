Feature: Crear cuenta
  Como usuario nuevo, quiero crear una cuenta en Airea, para guardar mis preferencias y acceder a una experiencia personalizada.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-45 @EP-07 @acceptance
  Scenario: Registro correcto
    Given que el usuario completa los datos requeridos
    When selecciona registrarse
    Then el sistema crea la cuenta y permite continuar

  @US-45 @EP-07 @acceptance
  Scenario: Datos incompletos
    Given que faltan datos requeridos
    When el usuario intenta registrarse
    Then el sistema indica qué información debe completar
