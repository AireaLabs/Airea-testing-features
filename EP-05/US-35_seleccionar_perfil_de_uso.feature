Feature: Seleccionar perfil de uso
  Como usuario, quiero indicar el contexto desde el que utilizo Airea, para recibir información más relevante para mi situación.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-35 @EP-05 @acceptance
  Scenario: Seleccionar perfil
    Given que el usuario configura Aire por primera vez
    When selecciona un perfil de uso
    Then el sistema guarda la selección

  @US-35 @EP-05 @acceptance
  Scenario: Cambiar perfil
    Given que el usuario ya tiene un perfil seleccionado
    When selecciona otro
    Then el sistema actualiza su preferencia
