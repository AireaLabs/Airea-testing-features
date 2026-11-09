Feature: Comparar situación actual con recomendación
  Como usuario, quiero comparar la condición actual con la recomendación disponible, para decidir si mantengo o modifico mi plan.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-16 @EP-02 @acceptance
  Scenario Outline: <escenario>
    Given que la condición actual es <condicion>
    When el usuario revisa la recomendación
    Then el sistema <resultado>

    Examples:
      | escenario      | condicion    | resultado                            |
      | Mantener plan  | adecuada     | indica que puede mantener su plan    |
      | Modificar plan | desfavorable | indica que debería modificar su plan |
