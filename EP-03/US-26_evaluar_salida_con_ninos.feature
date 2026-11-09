Feature: Evaluar salida con niños
  Como padre o tutor de un niño en edad escolar, quiero consultar las condiciones ambientales antes de salir con mi hijo, para decidir cómo realizar nuestro desplazamiento.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-26 @EP-03 @acceptance
  Scenario: Condiciones adecuadas
    Given que el padre o tutor consulta una salida con su hijo
    When las condiciones son adecuadas
    Then el sistema indica que puede mantener su plan

  @US-26 @EP-03 @acceptance
  Scenario: Condiciones desfavorables
    Given que el padre o tutor consulta una salida con su hijo
    When las condiciones son desfavorables
    Then el sistema recomienda modificar el plan
